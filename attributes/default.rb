default["ntp"]["servers"] =  ["ntp.nict.jp", "ntp.jst.mfeed.ad.jp"]
default["rails_desktop"] = {
	"packages" => {
		"i18n" => 
		%w[ipa-gothic-fonts
   			ipa-mincho-fonts
		   ipa-pgothic-fonts
		   ipa-pmincho-fonts
		   vlgothic-fonts
		   vlgothic-p-fonts
		]
	},
	"lang" => "LANG=ja_JP.UTF-8",
	"gitlab-shell" => {
		"repository" => "https://gitlab.com/gitlab-org/gitlab-shell.git",
		"revision" => "v1.9.3"
	},
	"mariadb" => {
		"arch" => "amd64"
	},
	"vagrant" => {
		"source" => "https://dl.bintray.com/mitchellh/vagrant",
		"arch" => "x86_64",
		"version" => "1.6.0"
	}
}

default["rbenv"]["user_installs"] = [
	{
		"user" => "vagrant",
		"rubies" => ["2.1.1"],
		"global" => "2.1.1",
		"gems" => {
			"2.1.1" => [
				{"name" => "bundler"}
			]
		}
	}
]


