[general]
# > 用于节点延迟测试
server_check_url= http://www.gstatic.com/generate_204
# > 服务器测试超时时间 (毫秒)
server_check_timeout = 3000
# > 用于设置图标显示
profile_img_url=https://github.githubassets.com/images/modules/site/integrators/google.png
# > 用于Check节点IP地址(以下geo_location_checker任选一个即可)
geo_location_checker=disabled
;geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/IP_API.js
# > 功能强大的解析器，用于引用资源的转换
resource_parser_url=https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/resource-parser.js
# > 下列路径将不经过QuanX的处理
excluded_routes=239.255.255.250/32, 24.105.30.129/32, 185.60.112.157/32, 185.60.112.158/32, 182.162.132.1/32
# udp_whitelist=1-442, 444-65535
# > 第一个filter为4g模式开启规则分流，第二个filter为其他wifi下开启规则分流，第三个wifi1修改成你路由器翻墙的wifi名开启直连模式，第四个wifi2为你公司或者其他有路由器翻墙的WiFi名走直连）
# > 默认关闭根据wifi切换模式，如需开启，删除下方的"#"即可
#running_mode_trigger=filter, filter, wifi1:all_direct, wifi2: all_direct
# > dns_exclusion_list
dns_exclusion_list=*.10099.com.cn, *.cmpassport.com, *.jegotrip.com.cn, *.icitymobile.mobi, id6.me, *.pingan.com.cn

[task_local]
# > 请手动添加下面的订阅（流媒体Task订阅集合）
; https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/UI-Action.json
# > 流媒体解锁查询
event-interaction https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/streaming-ui-check.js, tag=流媒体解锁查询, img-url=arrowtriangle.right.square.system, enabled=true
0 7,11,17 * * * https://gist.githubusercontent.com/Sliverkiss/33800a98dcd029ba09f8b6fc6f0f5162/raw/aliyun.js, tag=阿里云签到, img-url=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/AliYunDrive.png, enabled=true
[rewrite_local]

[rewrite_remote]

# ======= 会员解锁 ======= #
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Bilibili.conf, tag=哔哩哔哩广告净化@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/dev/raw/master/ForOwnUse.conf, tag=墨鱼专属VIP@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
# ======= 广告净化 ======= #
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/StartUp.conf, tag=墨鱼去开屏2.0@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/CaiYunAds.conf, tag=彩云天气净化@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Applet.conf, tag=微信小程序去广告@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/YoutubeAds.conf, tag=油管去广告@Maasea, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Weibo.conf, tag=微博去广告@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Amap.conf, tag=高德地图净化[卸载重装]@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true

# ======= 网页优化 ======= #
https://github.com/ddgksf2013/Rewrite/raw/master/Html/General.conf, tag=Google重定向@DivineEngine, update-interval=86400, opt-parser=false, enabled=true

# ======= 功能增强 ======= #
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/XiaoHongShu.conf, tag=小红书净化+去水印@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://gist.githubusercontent.com/ddgksf2013/f43026707830c7818ee3ba624e383c8d/raw/baiduCloud.adblock.js, tag=百度网盘净化@ddgksf2013, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ddgksf2013/Rewrite/master/Function/UnblockURLinWeChat.conf, tag=微信解锁被屏蔽的URL@zZPiglet, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/chavyleung/scripts/master/box/rewrite/boxjs.rewrite.quanx.conf, tag=BoxJS商店版@chavyleung, update-interval=86400, opt-parser=false, enabled=false

[server_local]

[server_remote]
https://submit.xz61.cn:22443/api/v1/client/subscribe?token=afdc1ad4db748413e0d740a883248e77, tag=Teacat, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Alpha/Ywhl.png, update-interval=3600, opt-parser=true, enabled=true
https://www.mojie.cool/api/v1/client/subscribe?token=7e572d9c940fc836627f4ee6a91e0ee1, tag=mojie, update-interval=172800, opt-parser=true, enabled=false
https://spare.400808.xyz/eccee9a8-cd7e-4018-bfbe-14c9cb868c19, tag=spare, update-interval=172800, opt-parser=false, enabled=false

[dns]

;prefer-doh3
;doh-server = https://223.5.5.5/dns-query, https://223.6.6.6/dns-query
# > QuantumultX开启IPV6方法，删去下面的「no-ipv6」，在「VPN」栏中，开启「兼容性增强」
no-ipv6
no-system
server=223.5.5.5
server=119.29.29.29
server=114.114.114.114
server=/*.icloud.com/119.29.29.29
server=/*.icloud.com.cn/119.29.29.29
server=/*.tencent.com/119.29.29.29
server=/*.weixin.com/119.29.29.29

[policy]
static=Global, Auto-Urltest, direct, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Global.png
static=StreamingSE, direct, proxy, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/bilibili.png
static=Streaming, Auto-Urltest, direct, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Streaming.png
static=Final, direct, Auto-Urltest, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Final.png
url-latency-benchmark=Auto-Urltest, server-tag-regex=.*, check-interval=900, tolerance=0, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/Auto.png

[filter_remote]
https://raw.githubusercontent.com/ddgksf2013/Filter/master/Unbreak.list, tag=规则修正, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/Cats-Team/AdRules/main/qx.conf, tag=广告终结者, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/tokuwakana/rules/main/Direct+.list, tag=直连修正, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/QuantumultX/Apple/Apple.list, tag=Apple, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/tokuwakana/rules/main/Proxy+.list, tag=代理修正, force-policy=Global, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/QuantumultX/Google/Google.list, tag=Google, force-policy=Global, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/QuantumultX/WeChat/WeChat.list, tag=微信直连, force-policy=direct, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/ddgksf2013/Filter/master/StreamingSE.list, tag=国内媒体, force-policy=StreamingSE, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ddgksf2013/Filter/master/Streaming.list, tag=国际媒体, force-policy=Streaming, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ConnersHua/RuleGo/master/Surge/Ruleset/Proxy.list, tag=全球加速, force-policy=Global, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/ASN.China.list, tag=国内网站, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true

[filter_local]
# > 一些比较容易忽视的分流
host, ad.12306.cn, direct
host, sdkapp.uve.weibo.com, direct

# > local
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
ip-cidr, 182.254.116.0/24, direct
geoip, cn, direct
final, Final

[http_backend]

# > Boxjs设置，改为使用http backend方式，访问地址改为http://127.0.0.1:9999，更新配置后请长按风车-更新，然后重启代理
# > BoxJs相关教程参考「https://docs.boxjs.app」
https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, host=boxjs.com, tag=BoxJS, path=^/, enabled=false

[mitm]
passphrase = 3827AABF
p12 = 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

skip_validating_cert = true
force_sni_domain_name = false

hostname = -*.apple.com, -consumer.fcbox.com, -*huami.com, -weather-data.apple.com, -*amemv.com, -*snssdk.com, -www.google.com

# 🟢 墨鱼提醒passphrase和p12代为证书&主机名部分, 更新配置前可把旧的配置中passphrase和p12代码拷贝下来, 导入新的配置文件把内容粘贴                                                
