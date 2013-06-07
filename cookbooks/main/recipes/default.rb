require_recipe "resque"
require_recipe "redis"

if node[:environment][:framework_env] == 'production'
  require_recipe "newrelic_server_monitoring"
end
