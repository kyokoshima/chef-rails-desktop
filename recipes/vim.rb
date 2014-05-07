include_recipe "vim::source"

template "/etc/profile.d/vim.sh" do
	source "vim.sh.erb"
end

