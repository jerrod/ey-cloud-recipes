#
# Cookbook Name:: jruby
# Recipe:: default
#
# Copyright 2011, Heavy Water Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#include_recipe "java"

Chef::Log.info "Downloading jruby v#{node[:jruby_version]} checksum #{node[:jruby_checksum]}"
remote_file "/tmp/jruby-#{node[:jruby_version]}.tar.gz" do
  source  "http://jruby.org.s3.amazonaws.com/downloads/#{node[:jruby_version]}/jruby-bin-#{node[:jruby_version]}.tar.gz"
  mode "0644"
  #checksum node[:jruby_checksum]
  not_if { File.exists?("/tmp/jruby-#{node[:jruby_version]}.tar.gz") }
end

Chef::Log.info "Updating Sun JDK"
#package "dev-java/sun-jdk" do
#  version "1.6.0.26"
#  action :upgrade
#end

bash "unzip jruby" do
  user "root"
  cwd "/tmp"
  code %(tar -zxvf /tmp/jruby-#{node[:jruby_version]}.tar.gz)
  not_if { File.exists? "/tmp/jruby-#{node[:jruby_version]}" }
end

bash "copy jruby root" do
  user "root"
  cwd "/tmp"
  code %(mkdir /usr/lib/jruby/#{node[:jruby_version]} && cp -r /tmp/jruby-#{node[:jruby_version]}/* /usr/lib/jruby/#{node[:jruby_version]})
  not_if { File.exists? "/usr/lib/jruby/#{node[:jruby_version]}/lib" }
end

bash "Add to path" do
  code %(export PATH=/usr/lib/jruby/#{node[:jruby_version]}/bin:\$PATH)
end


Chef::Log.info "symlinks"
link "/usr/bin/jruby" do
  to "/usr/lib/jruby/#{node[:jruby_version]}/bin/jruby"
end
link "/usr/bin/ruby" do
  to "/usr/lib/jruby/#{node[:jruby_version]}/bin/jruby"
end
link "/usr/lib64/jruby/1.6/bin/jruby" do
  to "/usr/lib/jruby/#{node[:jruby_version]}/bin/jruby"
end
link "/usr/bin/bundle" do
  to "/usr/lib/jruby/#{node[:jruby_version]}/bin/bundle"
end



if node[:jruby_nailgun]
  include_recipe "jruby::nailgun"
end

# install all gems defined in the module
=begin
node[:jruby_gems].each do |gem|
  if gem.is_a? Hash
    name = gem.delete(:name)
  else
    name = gem
    gem = nil
  end
  jruby_gem name, gem || {}
end
=end

# create symlink for ruby and gems
=begin
link "/usr/local/bin/ruby" do
  to "/usr/bin/jruby"
end

link "/usr/local/bin/gem" do
  to "/usr/bin/jgem"
end
=end
