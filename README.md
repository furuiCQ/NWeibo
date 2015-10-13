新浪微博模仿项目
一、授权登陆功能
1.先根据官方git设置plist相关属性。
2.在Appdelegate中进行app的register。
3.添加登陆/跳转到微博授权页面的功能。

-canOpenURL: failed for URL: "weibosdk2.5://" - error: "(null)"
-canOpenURL: failed for URL: "weibosdk://" - error: "(null)"
-canOpenURL: failed for URL: "sinaweibo://" - error: "(null)"
-canOpenURL: failed for URL: "sinaweibohd://" - error: "(null)"
这是因为模拟器上并没有安装微博导致，如果运行到真机上就不会有报错了。


