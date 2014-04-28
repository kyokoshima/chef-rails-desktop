cookbook_file "/etc/yum.repos.d/MariaDB.repo" do
	source "MariaDB.repo"
end

%w[MariaDB-Galera-server MariaDB-client MariaDB-devel].each do |pkg|
	package pkg
end