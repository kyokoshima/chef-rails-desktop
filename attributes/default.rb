default["ntp"]["servers"] =  ["ntp.nict.jp", "ntp.jst.mfeed.ad.jp"]
default["rails-desktop"] = {
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
	}
}