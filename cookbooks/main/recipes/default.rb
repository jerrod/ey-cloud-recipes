require_recipe "redis"
require_recipe "resque"

if node[:environment][:framework_env] == 'production'
  require_recipe "newrelic_server_monitoring"
end
