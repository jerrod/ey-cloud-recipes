if node[:name] =~ /^worker_groupc/i
  cron "Update FC Params" do
    minute "0"
    hour "0-5,21-23"
    day "*"
    month "*"
    weekday "*"
    user 'deploy'
    command "cd /data/dynamiccreative/current && RAILS_ENV=production bundle exec rake schedule:fc:update_ad_param"
    action :create
  end
end
