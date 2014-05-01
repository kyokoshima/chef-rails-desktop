
include_recipe "ruby_build"

include_recipe "rbenv::user"
# default["rbenv"]["user_installs"]["rubies"] = ["2.1.1"]
# default["rbenv"]['user_installs']["global"] = "2.1.1"

# rbenv_global "2.1.1" do
# 	user "vagrant"
# end

# rbenv_gem "bundler" do
# 	user "vagrant"
# 	rbenv_version "2.1.1"
# end
