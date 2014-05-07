
machine = node["kernel"]["machine"]


template "/etc/yum.repos.d/MariaDB.repo" do
	if machine =~ /^[ix]{1}\w*6$/
		arch = "x86"
	else
		arch = "amd64"
	end
	node.default['rails_desktop']['mariadb']['arch'] = arch
	source "MariaDB.repo.erb"
end

# pp node["kernel"]
%w[MariaDB-server MariaDB-client MariaDB-devel MariaDB-common].each do |pkg|
	package pkg do
		action :install
		subscribes :create, "template[/etc/yum.repos.d/MariaDB.repo]"
	end
end

# file "/etc/yum.repos.d/MariaDB.repo" do
# 	action :delete
# end

# remote_file "/tmp/mysql-community-release-el6-5.noarch.rpm" do
# 	source "http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm"
# 	notifies :run, "execute[mysql_repo_install]"
# end



# execute "mysql_repo_install" do
# 	# command <<-EOH
# 	# 	yum localinstall /tmp/mysql-community-release-el6-5.noarch.rpm -y
# 	# 	# yum install -y mysql-community-server mysql-community-client mysql-community-devel
# 	# EOH
# 	command "yum localinstall /tmp/mysql-community-release-el6-5.noarch.rpm -y"
# 	# notifies :run, resources(:package => %w[mysql-community-server mysql-community-client mysql-community-devel])
# end

# %w[mysql-community-server mysql-community-client mysql-community-devel].each do |pkg|
# 	package pkg do
# 		# action :install
# 		# flush_cache [:before]
# 		subscribes :install, "execute[mysql_repo_install]"
# 	end
# end



