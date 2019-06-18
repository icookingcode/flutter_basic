# flutter_basic  http://jspang.com/

Flutter 基础

## 开发环境搭建 Windows下
  * Java环境 ：https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
  * AndroidStudio安装：https://developer.android.google.cn/studio/
    * 安装flutter插件
    * 安装dart插件
  * Flutter 安装包： https://flutter.dev/docs/get-started/install 
    * git地址：https://github.com/flutter/flutter.git
  * 配置Flutter环境变量：
    * Path 添加 FlutterSDK/bin
    * 添加变量：PUB_HOSTED_URL https://pub.flutter-io.cn
    * 添加变量：FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn
    * 运行：flutter doctor 检测开发环境
    * 运行：flutter doctor --android-licenses
## Text 文字小部件
  * textAlign:设置文字对齐方式
  * overflow:超出文本显样式
  * maxLines：最大显示行数
  * style:设置文字大小、颜色、下划线等
  
## Container 容器小部件
  * alignment:子部件的对齐方式
  * padding:内边距
  * margin:外边距
  * color:纯色背景
  * decoration:添加渐变色背景
    * BoxDecoration: gradient：渐变色；border: 添加边框；borderRadius：圆角

