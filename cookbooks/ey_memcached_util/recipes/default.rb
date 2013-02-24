# change these to suit your needs
utility_name = 'memcached'
memory_usage = 5120 # MB
memcached_version = '1.4.5'

# service
service "memcached" do
  supports :restart => true
end

# find memcached util hostname
host = node['utility_instances'].find{|i| i['name'].eql?(utility_name)}

if host
  # app, solo, utility
  if %w[app app_master util solo].include?(node[:instance_role])
    node[:applications].each do |app_name, data|
      # write memcached.yml
      template "/data/#{app_name}/shared/config/memcached.yml" do
        owner node[:owner_name]
        group node[:owner_name]
        mode 0644
        source "memcached.yml.erb"
        backup false
        variables({
          :app_name => app_name,
          :host => host['hostname'],
          :memory_usage => memory_usage
        })
      end
    end
  end

  # utility instance
  if node[:instance_role] == 'util' && node[:name] == utility_name
    # install memcached
    execute "unmask memcached #{memcached_version}" do
      package = "=net-misc/memcached-#{memcached_version}"
      command "echo '#{package}' >> /etc/portage/package.keywords/local"
      not_if "grep #{package} /etc/portage/package.keywords/local"
    end

    package "net-misc/memcached" do
      action :install
      version memcached_version
      notifies :restart, resources(:service => "memcached"), :delayed
    end

    # conf
    template "/etc/conf.d/memcached" do
      owner "root"
      group "root"
      mode 0755
      source "memcached.erb"
      backup false
      action :create
      variables({
        :memory_usage => memory_usage
      })
      notifies :restart, resources(:service => "memcached"), :delayed
    end

    # monit
    remote_file "/etc/monit.d/memcached.monitrc" do
      owner "root"
      group "root"
      mode 0755
      source "memcached.monitrc"
      backup false
      action :create
    end

    execute "monit quit && sleep 2"
  end
end
