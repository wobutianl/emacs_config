
==========================  透明皮肤  ============================

透明色为#ff00ff，directx下ColorKey值(#030201)，所有透明色部分将会完全透明。
文字需要显示在非透明部分上，否则效果会非常差。

==========================  皮肤说明  ============================

skin.ini                        皮肤配置文件，标准INI格式

皮肤仅支持24位或32位图片文件

logo.png                        播放器启动后的Logo图

background.png                  控制栏背景图

background_center.png           控制栏中心部分背景图，如果该文件存在且center为1时
                                按钮的left或right关键字表示按钮到background_center边缘的距离
                                如果不存在或center为0时，则left或right关键字表示按钮到控制栏左侧的距离
                                控制栏按钮right > 0时右对齐，否则左对齐。

title.png                       标题栏背景(使用边框皮肤时，必需)
title_left.png                  标题栏左背景(使用边框皮肤时，必需)
title_right.png                 标题栏右背景(使用边框皮肤时，必需)
border_left.png                 窗口左边框(使用边框皮肤时，必需)
border_right.png                窗口右边框(使用边框皮肤时，必需)
border_bottom.png               窗口下边框(使用边框皮肤时，必需)
bottom_left.png                 窗口左下角
bottom_right.png                窗口右下角


以WMP11中skin.ini(稍作修改)为例进行说明，透明色为#ff00ff:

[logo]                      Logo背景色
bg_color=c4c4c4                      默认背景色为#001010

[background]                控制栏背景
width=480                            播放器窗口的最小宽度(非必需，默认为320)，避免文字或按钮重叠
zoom=0                               1为平铺，0为拉伸，默认为0

[controlbar]                控制栏
alpha=180                            控制栏透明度，自动隐藏和全屏幕时有效，默认为0
hide=1                               1为自动隐藏，默认为0

[seekbar]                   进度条(必需)，seekbar.png 和 seekbar_foregnd.png
top=4                               顶端位置。(以下相同作用的关键字不再重复)
left=15                             图片左侧与边缘距离。(以下相同作用的关键字不再重复)
right=15                            图片右侧与边缘距离。(以下相同作用的关键字不再重复)
height=6                            高度，鼠标能控制的高度，并不是图片高度。(以下相同作用的关键字不再重复)
zoom=0                              1为平铺，0为拉伸，默认为0
center=0							1为居中，居中时left，right值表示与中心背景图边缘的距离，默认为0

[seekbar_thumb]             进度条按钮(必需)
top=2
show=0                              1为始终显示，0为鼠标经过时显示，默认为0

[volumebar]                         音量条(必需)，volumebar.png 和 volumebar_foregnd.png
top=31
right=12                            right > 0 时右对齐，否则左对齐
height=6
center=0                            是否居中 1为居中，0为不居中。默认center=0

[volumebar_thumb]           音量条按钮(必需)
top=28

[btn_play]                  播放按钮(非必需)，支持透明色，默认center=1，btn_play.png 和 btn_pause.png
top=10
left=110
show=1                              是否显示按钮，0不显示，1显示，默认为1。所有控制栏按钮都支持此设置

[btn_prev]                  上一个按钮(非必需)，默认center=1
top=23
left=62

[btn_next]                  下一个按钮(非必需)，默认center=1
top=23
left=154

[btn_prev]                  前进按钮(非必需)，默认center=1

[btn_back]                  后退按钮(非必需)，默认center=1

[btn_stop]                  停止按钮(非必需)，默认center=1
top=23
left=25

[btn_open]                  打开文件按钮(非必需)，默认center=0
top=23
left=220
center=1                            是否居中 1为居中，0为不居中。

[btn_playlist]              播放列表按钮(非必需)，默认center=0
top=23
left=15

[btn_equalizer]             均衡器按钮(非必需)，默认center=0
top=23
left=50

[btn_screenshot]            截图按钮(非必需)，默认center=0

[btn_mute]                  静音按钮(非必需)，默认center=0，btn_mute.png 和 btn_muted.png(已静音)

[btn_fullscreen]            全屏按钮(非必需)，默认center=0

[status]                    时间信息(非必需)
top=13
height=20
right=0                             右对齐
width=180
color=ffffff                        文字颜色
show=1                              1 当前时间 / 总时间，2 仅当前时间，3 当前时间 / 总时间 (百分比 系统时间)
                                    4 当前时间 (百分比 系统时间)，0 不显示，默认为0

[status2]                   时间信息2(非必需)
top=13
height=20
right=0                             
width=180
color=ffffff
show=6                              5 总时间，6 剩余时间

[appskin]                   边框皮肤(非必需)
enable=1                            enable=1时才开启完整皮肤，否则只开启控制栏皮肤
alpha=1                             alpha=1时整个边框支持透明色

[btn_close]                         关闭按钮(使用边框皮肤时，必需)，支持透明色
top=0
right=6

[btn_min]                   最小化按钮(非必需)，支持透明色
top=0
right=75

[btn_max]                   最大化按钮(非必需)，支持透明色
top=0
right=50

[btn_menu]                  弹出菜单按钮(非必需)，支持透明色
top=3
left=50

[title_text]                标题栏文字
top=7
height=16
size=10                             字体大小，默认为10
left=90                             左边空出90像素，避免按钮挡住文字
right=90                            右边空出90像素，避免按钮挡住文字
color=ffffff
alignment=1                         1 左对齐，2 右对齐，0 居中，默认为0
show=1                              1 显示，0 不显示，默认为0

