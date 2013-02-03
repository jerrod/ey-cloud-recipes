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

include_recipe "java"

version = node[:jruby_version]

prefix =  node[:jruby_install_path]

file "/etc/profile.d/jruby.sh" do
  mode "0755"
  content "export JRUBY_OPTS=\"-Xcompat.version=1.9 -Xcext.enabled=true\"\nexport PATH=/usr/local/share/jruby-1.7.1/bin:\$PATH:" + File.join(prefix, "bin") + "\n"
  action :create
end

# install jruby
install_from_release('jruby') do
  release_url  "http://jruby.org.s3.amazonaws.com/downloads/#{version}/jruby-bin-#{version}.tar.gz"
  home_dir     prefix
  action       [:install, :install_binaries]
  version      version
  checksum node[:jruby_checksum]
  has_binaries  %w(bin/jgem bin/jruby bin/jirb)
  not_if       { File.exists?(prefix) }
  notifies :create_if_missing, "file[/etc/profile.d/jruby.sh]"
end

if node[:jruby_nailgun]
  include_recipe "jruby::nailgun"
end

# install all gems defined in the module
node[:jruby_gems].each do |gem|
  if gem.is_a? Hash
    name = gem.delete(:name)
  else
    name = gem
    gem = nil
  end
  jruby_gem name, gem || {}
end

# create symlink for ruby and gems
link "/usr/local/bin/ruby" do
  to "/usr/bin/jruby"
end

link "/usr/local/bin/gem" do
  to "/usr/bin/jgem"
end


