#此配置搭配openclash meta内核使用
mixed-port: 7890 # 局域网访问Port
bind-address: '*' #绑定IP地址
allow-lan: true # 允许局域网访问
mode: rule # 模式
log-level: warning # 日志等级
external-controller: 0.0.0.0:9090 # 网页端口
find-process-mode: strict   # 匹配所有进程
tcp-concurrent: true # tcp 并发模式
ipv6: false #软路由上不建议开启

# ui部分
# secret: ""
# external-ui: .\ui\public

#自动更新geoip和geosite文件
geodata-mode: true
geo-auto-update: true
geo-update-interval: 24

geox-url:                           # 自定义 geodata url, 需要有代理的前提才能下载geoip和geosite
    geoip: "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat"
    geosite: "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat"
    mmdb: "https://cdn.jsdelivr.net/gh/MetaCubeX/meta-rules-dat@release/country.mmdb"

keep-alive-interval: 15
# fakeip 本地存储，省略DNS查询
profile:
    store-selected: true      # 存储 select 选择记录
    store-fake-ip: true        # 持久化 fake-ip

# Tun 配置 Windows使用
tun:
    enable: false  #PC端开启 路由器不开启
    stack: mixed # gvisor / lwip
    dns-hijack:
        - 0.0.0.0:53 # 需要劫持的 DNS
    auto-route: true # 自动设置全局路由，可以自动将全局流量路由进入tun网卡。
    auto-detect-interface: true # 自动识别出口网卡
    endpoint-independent-nat: true
    inet4-route-address: # 启用 auto-route 时使用自定义路由而不是默认路由
        - 0.0.0.0/1
        - 128.0.0.0/1
#  inet6-route-address: # 启用 auto-route 时使用自定义路由而不是默认路由
#    - "::/1"
#    - "8000::/1"

dns:
    enable: true # 关闭将使用系统 DNS
    prefer-h3: true # 开启 DoH 支持 HTTP/3，将并发尝试
    listen: ':53' # 开启 DNS 服务器监听
    default-nameserver:
        - 114.114.114.114
        - 8.8.8.8
        - tls://223.5.5.5:853
        - 192.168.31.1 # 如果是windows或安卓客户端可使用system，如果是软路由填写你的拨号光猫/路由器的IP地址

    enhanced-mode: fake-ip
    fake-ip-range: 198.18.0.1/16
    fake-ip-filter:   #这里可以填写不使用fakeip的域名
        - '*.lan'
        - '*.battlenet.com.cn'
        - '*.battlenet.com'
        - '*.blzstatic.cn'
        - '*.battle.net'
        # === Linksys Wireless Router ===
        - '*.linksys.com'
        - '*.linksyssmartwifi.com'
        # === Apple Software Update Service ===
        - swscan.apple.com
        - mesu.apple.com
        # === Windows 10 Connnect Detection ===
        - '*.msftconnecttest.com'
        - '*.msftncsi.com'
        # === NTP Service ===
        - 'time.*.com'
        - 'time.*.gov'
        - 'time.*.edu.cn'
        - 'time.*.apple.com'
        - 'time1.*.com'
        - 'time2.*.com'
        - 'time3.*.com'
        - 'time4.*.com'
        - 'time5.*.com'
        - 'time6.*.com'
        - 'time7.*.com'
        - 'ntp.*.com'
        - 'ntp.*.com'
        - 'ntp1.*.com'
        - 'ntp2.*.com'
        - 'ntp3.*.com'
        - 'ntp4.*.com'
        - 'ntp5.*.com'
        - 'ntp6.*.com'
        - 'ntp7.*.com'
        - '*.time.edu.cn'
        - '*.ntp.org.cn'
        - '+.pool.ntp.org'
        - time1.cloud.tencent.com
        # === Music Service ===
        ## NetEase
        - '+.music.163.com'
        - '*.126.net'
        ## Baidu
        - musicapi.taihe.com
        - music.taihe.com
        ## Kugou
        - songsearch.kugou.com
        - trackercdn.kugou.com
        ## Kuwo
        - '*.kuwo.cn'
        ## JOOX
        - api-jooxtt.sanook.com
        - api.joox.com
        - joox.com
        ## QQ
        - '*.qq.com'
        - report.url.cn
        ## Xiami
        - '*.xiami.com'
        ## Migu
        - '+.music.migu.cn'
        # === Game Service ===
        ## Nintendo Switch
        - '+.srv.nintendo.net'
        ## Sony PlayStation
        - '+.playstation.net'
        - '+.playstation.com'
        - '+.stun.playstation.net'
        ## Microsoft Xbox
        - 'xbox.*.microsoft.com'
        - '+.xboxlive.com'
        # === Other ===
        ## QQ Quick Login
        - localhost.ptlogin2.qq.com
        ## Golang
        - proxy.golang.org
        ## STUN Server
        - 'stun.*.*'
        - 'stun.*.*.*'
        ## Bilibili CDN
        - '*.mcdn.bilivideo.cn'
        # === Other ===
        - '*.bilibili.com'
        - '*.1huizhan.com'
        - '*.3.cn'
        - '*.300hu.com'
        - '*.360buy.cn'
        - '*.360buy.com'
        - '*.360buy.com.cn'
        - '*.360buyimg.com'
        - '*.360buyinternational.com'
        - '*.360top.com'
        - '*.jd.com'
        # WiFi-Calling 如果你发现你的WiFi Calling不能发图片 大概率是节点UDP问题
        - t-mobile.com
        - crl.t-mobile.com
        - eas3.msg.t-mobile.com
        - mascns.t-mobile.com
        - ns.sipgeo.t-mobile.com
        - epdg.epc.mnc240.mcc310.pub.3gppnetwork.org
        - epdg.epc.mnc260.mcc310.pub.3gppnetwork.org
        - ss.epdg.epc.mnc260.mcc310.pub.3gppnetwork.org
        - ss.epdg.epc.geo.mnc260.mcc310.pub.3gppnetwork.org 
        # Hygege提供
        - services.googleapis.cn
        - xn--ngstr-lra8j.com
        
    
    nameserver:
        - 114.114.114.114 # default value
        - 8.8.8.8
        - tls://223.5.5.5:853 # DNS over TLS
        - https://doh.pub/dns-query
        - https://dns.alidns.com/dns-query#h3=true 
        - 192.168.31.1

 # 锚点
#pg: &pg {type: select, proxies: [Proxy, Manual, OpenAI, Streaming, Auto-Urltest, FINAL, DIRECT]}
p: &p {type: http, interval: 86400, health-check: {enable: true, url:  http://www.gstatic.com/generate_204, interval: 300}}
auto: &auto {type: url-test, interval: 300, tolerance: 20, lazy: true, url: 'http://www.gstatic.com/generate_204', disable-udp: false, timeout: 2000, max-failed-times: 3, hidden: true, include-all-providers: true}
select: &select {type: select, use: [Subscribe]}
#规则类
c: &c {type: http, behavior: classical, interval: 86400, format: text}
d: &d {type: http, behavior: domain, interval: 86400, format: text}
i: &i {type: http, behavior: ipcidr, interval: 86400, format: mrs}

proxy-providers:
  Subscribe: {<<: *p, path: ./proxy-providers/Sub.yaml, url: https://submit.xz61.cn:22443/api/v1/client/subscribe?token=afdc1ad4db748413e0d740a883248e77}
       
               
proxies: null

proxy-groups:
  #分流分组
  - {name: Domestic, type: select, proxies: [DIRECT, Auto-Urltest, Manual]}
  
  - {name: Proxy, type: select, proxies: [Auto-Urltest, Manual, DIRECT]}
  
  - {name: Manual, <<: *select}
  
  - {name: OpenAI, type: select, proxies: [Manual, Auto-Urltest, DIRECT]}
  
  - {name: Streaming, type: select, proxies: [Auto-Urltest, Manual, DIRECT]}
  
  - {name: Auto-Urltest, <<: *auto}
  
  - {name: FINAL, type: select, proxies: [DIRECT, Auto-Urltest, Manual]}

rule-providers:  
  Lan: {<<: *c, path: ./rule-providers/Lan.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Lan/Lan.list}
  Download: {<<: *c, path: ./rule-providers/Download.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Download/Download.list}
  AD: {<<: *d, path: ./rule-providers/AD.list, url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AdvertisingLite/AdvertisingLite.list}
  Apple: {<<: *c, path: ./rule-providers/Apple.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Apple/Apple.list}
  Github: {<<: *c, path: ./rule-providers/Github.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/GitHub/GitHub.list}
  YouTube: {<<: *c, path: ./rule-providers/YouTube.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/YouTube/YouTube.list}
  Google: {<<: *c, path: ./rule-providers/Google.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Google/Google.list}
  Telegram: {<<: *c, path: ./rule-providers/Telegram.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Telegram/Telegram.list}
  Twitter: {<<: *c, path: ./rule-providers/Twitter.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Twitter/Twitter.list}
  Direct+: {<<: *c, path: ./rule-providers/Direct+.list,  url: https://cdn.jsdelivr.net/gh/tokuwakana/rules@main/Direct+.list}
  Steam: {<<: *c, path: ./rule-providers/steamcn.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/SteamCN/SteamCN.list}
  Battle: {<<: *c, path: ./rule-providers/Battle.list,  url:  https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Battle/Battle.list}
  AI: {<<: *c, path: ./rule-providers/AI.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/OpenAI/OpenAI.list}
  ChinaDomain: {<<: *c, path: ./rule-providers/ChinaDomain.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/China/China.list}
  Proxy+: {<<: *c, path: ./rule-providers/Proxy+.list,  url: https://cdn.jsdelivr.net/gh/tokuwakana/rules@main/Proxy+.list}
  ProxyMedia: {<<: *c, path: ./rule-providers/ProxyMedia.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/GlobalMedia/GlobalMedia.list}
  ProxyGFW: {<<: *c, path: ./rule-providers/ProxyGFW.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/ProxyLite/ProxyLite.list}
  Instagram: {<<: *c, path: ./rule-providers/Instagram.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@refs/heads/master/rule/Clash/Instagram/Instagram.list}
 # speedtest: {<<: *c, format: text, path: ./rule-providers/speedtest.list,  url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Speedtest/Speedtest.list}

rules:
  - RULE-SET,Github,Proxy
  - RULE-SET,Instagram,Proxy
  - RULE-SET,Lan,DIRECT 
  - RULE-SET,Download,DIRECT
  - RULE-SET,Direct+,DIRECT
  - RULE-SET,AD,REJECT
  - RULE-SET,Proxy+,Proxy
  - RULE-SET,AI,OpenAI
  - RULE-SET,Battle,Proxy
  - RULE-SET,Apple,Domestic
  - RULE-SET,YouTube,Proxy
  - RULE-SET,Google,Proxy
  - RULE-SET,Telegram,Proxy
  - RULE-SET,Twitter,Proxy
  - RULE-SET,Steam,Domestic
  - RULE-SET,ProxyMedia,Streaming
  - RULE-SET,ProxyGFW,Proxy 
  - RULE-SET,ChinaDomain,DIRECT
  - GEOIP,CN,DIRECT
  - MATCH,FINAL
