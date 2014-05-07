machine = node["kernel"]["machine"]
node.default[:rails_desktop][:vagrant][:arch] = "i686" if machine =~ /^[ix]{1}\w*6$/

remote_file "vagrant_rpm" do |variable|
	vg = node[:rails_desktop][:vagrant]
	file_name = "vagrant_#{vg['version']}_#{vg['arch']}.rpm"
	local_file_name = "/tmp/#{file_name}"
	node.default[:rails_desktop][:vagrant][:package] = local_file_name
	path local_file_name
	source "#{vg['source']}/#{file_name}"
	notifies :install, "package[#{local_file_name}]"
end

package node[:rails_desktop][:vagrant][:package] do
	action :nothing
end