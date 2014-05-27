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

include_recipe "rails_desktop::yum"

include_recipe "rails_desktop::ntp"

include_recipe "rails_desktop::i18n"

# include_recipe "rails-desktop::user"
# git
include_recipe "git::source"
# rbenv
include_recipe "rails_desktop::ruby"

include_recipe "rails_desktop::rails"

include_recipe "rails_desktop::nginx"

include_recipe "rails_desktop::vim"

package "zsh"

include_recipe "rails_desktop::db"

include_recipe "rails_desktop::vagrant"