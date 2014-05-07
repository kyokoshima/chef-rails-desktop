name             'rails_desktop'
maintainer       'tmpla.info'
maintainer_email 'dev.kyoko@gmail.com'
license          'All rights reserved'
description      'Installs/Configures development'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w[ntp git rbenv ruby_build nginx vim].each do |pkg|
	depends pkg
end