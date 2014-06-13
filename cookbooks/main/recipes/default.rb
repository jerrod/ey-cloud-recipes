require_recipe "resque"
require_recipe "redis"

if node[:environment][:framework_env] == 'production'
  require_recipe "newrelic_server_monitoring"
  require_recipe "ad_param_cron"

  ey_cloud_report "ad_param_cron" do
    message "adding crons to worker server"
  end
end
