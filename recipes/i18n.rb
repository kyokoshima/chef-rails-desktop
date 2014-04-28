node["rails-desktop"]["packages"]["i18n"].each do |pkg|
	package pkg
end

file '/etc/sysconfig/i18n' do
	_file = Chef::Util::FileEdit.new(path)
	_file.search_file_replace_line('LANG=', node["rails-desktop"]["lang"])
	_file.write_file
	not_if { ENV['LANG'] == node["rails-desktop"]["lang"] }
end