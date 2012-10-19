#
# Cookbook Name:: newrelic-servers
# Recipe:: windows
#
# Copyright 2012, Besol Soluciones S.L.,
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

windows_package "NewRelicServerMonitor" do
  source "#{node[:newrelic][:msi_url]}/NewRelicServerMonitor_#{node[:newrelic][:msi_version]}.msi"
  installer_type :msi
  options "/L*v newrelic_install.log NR_LICENSE_KEY=#{node[:newrelic][:license_key]} NR_COLLECTOR_HOST=#{node[:newrelic][:collector]} NR_HOSTNAME=#{node[:fqdn]}"
  action :install
  
end
