#
# Cookbook Name:: opencrowbar-dev_env
# Recipe:: default
#
# Copyright 2015, Ovais Tariq <me@ovaistariq.net>
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

# Include the necessary recipes
include_recipe "chef-solo-search"
include_recipe "etc_environment"
include_recipe "build-essential"
include_recipe "selinux::permissive"

# Install the required packages
node["opencrowbar-dev_env"]["packages"].each do |pkg|
  package pkg do
   action :install
  end
end

# Setup users
include_recipe "users::sysadmins"

# Setup squid
include_recipe "squid"
