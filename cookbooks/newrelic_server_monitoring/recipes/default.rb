enable_package "app-admin/newrelic-sysmond" do
  version "#{node[:newrelic][:version]}"
end

package "app-admin/newrelic-sysmond" do
  action :install
  version "#{node[:newrelic][:version]}"
end

template "/etc/newrelic/nrsysmond.cfg" do
  source "nrsysmond.cfg.erb"
  owner 'root'
  group 'root'
  mode 0644
  backup 0
  variables(
    :key   => node[:newrelic][:license_key])
end

tokens = File.read("/etc/descriptive_hostname").split(".")
descriptive_hostname =
  if tokens.size > 4
    "#{tokens[2]}_#{tokens[3]}"
  else
    tokens[2]
  end

template "/etc/monit.d/nrsysmond.monitrc" do
  source "nrsysmond.monitrc.erb"
  owner "root"
  group "root"
  mode 0644
  backup 0
  variables({ :name => descriptive_hostname.strip })
end

directory "/var/log/newrelic" do
  action :create
  recursive true
  owner 'root'
  group 'root'
end

execute "monit reload" do
  action :run
end
