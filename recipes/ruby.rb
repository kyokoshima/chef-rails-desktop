include_recipe "ruby_build"
include_recipe "rbenv::system"
rbenv_ruby "2.1.1"
rbenv_global "2.1.1"

rbenv_gem "bundler" do
	rbenv_version "2.1.1"
end
