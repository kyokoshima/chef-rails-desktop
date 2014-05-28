include_recipe "vim::source"

template "/etc/profile.d/vim.sh" do
	source "vim.sh.erb"
end

template "/home/vagrant/.vimrc" do
	owner "vagrant"
	group "vagrant"
	source "vimrc.erb"
end