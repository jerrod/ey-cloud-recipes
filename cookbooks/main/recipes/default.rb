require_recipe "executioner"

if node[:environment][:framework_env] == 'production'
  require_recipe "newrelic_server_monitoring"
end
