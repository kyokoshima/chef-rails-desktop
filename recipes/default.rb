#
# Cookbook Name:: development
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "iptables" do
	action [:disable, :stop]
end

include_recipe "rails-desktop::ntp"

include_recipe "rails-desktop::i18n"

# include_recipe "rails-desktop::user"
# git
include_recipe "git::source"
# rbenv
include_recipe "rails-desktop::ruby"

include_recipe "rails-desktop::rails"

include_recipe "rails-desktop::nginx"

include_recipe "vim::source"

package "zsh"

include_recipe "rails-desktop::db"