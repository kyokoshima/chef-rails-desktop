yum_package "yum-fastestmirror" do
	action :install
end

execute "yum -y update"