#
# Cookbook Name:: opencrowbar-dev_env
# Attributes:: default
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

default["opencrowbar-dev_env"]["packages"] = %w{git tmux}

# setup environment variables
default["etc_environment"] = {
  "no_proxy" => "127.0.0.1,[::1],localhost,192.168.124.0/24,172.16.0.0/1"
}
