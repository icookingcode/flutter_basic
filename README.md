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

## Image 图片小部件
  * Image.network 加载网络图片小部件
  * fit:填充方式
    * fit: BoxFit.contain 保持原图比例，适配容器
    * fit: BoxFit.fill 平铺适配容器
    * fit: BoxFit.fitWidth 横向铺满，不变形
    * fit: BoxFit.cover 铺满，不变形(被裁切)
    * fit: BoxFit.scaleDown 保持原图大小
  * colorBlendMode + color :混合模式，添加滤镜效果
  * repeat:重复铺满

## ListView 小部件
  * children:添加ListView的内容（固定数量的列表）
  * scrollDirection:Axis.horizontal 横向列表
  * ListView.builder 动态生成list列表

## GridView 小部件
  *  GridView.count 生成网格(固定数量)
    * padding: 内边距
    * crossAxisCount：网格数量
    * crossAxisSpacing: 网格间距
    * mainAxisSpacing: 网格间距
    * childAspectRatio: 网格的宽高比
    
## Row 小部件(横向) && Column 小部件(纵向)
  * Expanded 扩展小部件(灵活布局) 
  
