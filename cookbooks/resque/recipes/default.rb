#
# Cookbook Name:: resque
# Recipe:: default

# Application servers
if ['app_master', 'app'].include?(node[:instance_role])
  redis_instance = node['utility_instances'].find { |instance| instance['name'] == 'redis' }

  node[:applications].each do |app, data|
    # Used to set the redis hostname for the worker
    template "/data/#{app}/shared/config/resque.yml" do
      owner node[:owner_name]
      group node[:owner_name]
      mode 0644
      source "resque.yml.erb"
      variables({
        :environment => node[:environment][:framework_env],
        :hostname => redis_instance[:hostname]
      })
    end
  end
end

# Workers
if (['util'].include?(node[:instance_role]) && node[:name] =~ /^worker/i) || node[:instance_role] == 'solo'

  execute "install resque gem" do
    command "gem install resque redis redis-namespace yajl-ruby -r"
    not_if { "gem list | grep resque" }
  end

  # Self shutdown check for graceful restarts
  template "/engineyard/bin/worker-shutdown-check" do
    owner  "root"
    group  "root"
    mode   "0755"
    source "worker-shutdown-check.erb"
    action :create
  end

  cron "run_worker_shutdown_check" do
    hour    "*"
    minute  "*/3"
    command "/engineyard/bin/worker-shutdown-check"
  end

  node[:applications].select{ |app, _| ['dynamiccreative', 'performance_dc'].include? app }.each do |app, data|

    # Find what queue group or queue this worker is configured to use (based on the name)
    node[:name].scan(/worker_([a-z_]*)_[0-9]*/i) do |worker_class|

      # Determine the array of workers dependent on the queue identifier provided
      key     = worker_class[0]
      queues  = node[:queues]

      if queues.has_key?(key) || key.nil?
        workers = queues[:all].values.map { |v| v.values }.flatten
      else
        queues[:all].each do |(group, subgroups)|
          if (groupmatch = (group == key)) || subgroups.has_key?(key)
            subgroups.each do |(subgroup, queues)|
              if groupmatch || subgroup == key
                # preserve workers who have multiple
                # queues in prioritised order
                # e.g. :campaign, :ad_group, :keyword, :ad
                queues.each do |queue|
                  (workers ||= []) << queue
                end

                break if subgroup == key
              end
            end

            break if groupmatch || subgroups.has_key?(key)
          end
        end
      end

      workers.each_with_index do |queue, index|
        template "/data/#{app}/shared/config/resque_#{index}.conf" do
          owner node[:owner_name]
          group node[:owner_name]
          mode 0644
          # allow individual processes to handle alternate jobs
          # when their first (primary) queue is empty
          # e.g. primary, secondary, tertiary, other
          queue = queue.join(',') if queue.is_a?(Array)

          variables({:queue => queue})
          source "resque_wildcard.conf.erb"
        end
      end

      directory "/mnt/#{app}/resque" do
        recursive true
        owner node[:owner_name]
        group node[:owner_name]
        mode 0755
      end

      # Store resque configs here for now as we are having troubles with EY above
      # workers.each_with_index do |queue, index|
      #   template "/mnt/dynamiccreative/resque/resque_#{index}.conf" do
      #     owner node[:owner_name]
      #     group node[:owner_name]
      #     mode 0644
      #     variables({:queue => queue})
      #     source "resque_wildcard.conf.erb"
      #   end
      # end

      template "/etc/monit.d/resque_#{app}.monitrc" do
        owner 'root'
        group 'root'
        mode 0644
        source "monitrc.conf.erb"
        variables({
          :num_workers => workers.size,
          :app_name => app,
          :rails_env => node[:environment][:framework_env]
        })
      end
    end

    execute "ensure-resque-is-setup-with-monit" do
      epic_fail true
      command %Q{
      monit reload
      }
    end
  end
end
