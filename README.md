yjboAntiCompilation-反编译
反编译的实现所使用的资源。参考：https://gold.xitu.io/entry/577a8dc1128fe1005654d598

   因为年轻还不能参与到使用类千万级别的app，总在接触创业公司小的app的小功能；但是资源还是可以有的，即使不能参与我们还是能参考这样的app的，我们可以通过反编译apk来了解、学习别人千万级用户的app的框架：下面介绍反编译滴滴打车Android用户端apk：
   声明：本文参考了原文：https://gold.xitu.io/entry/577a8dc1128fe1005654d598 ，感谢作者分享，下面我写一下我使用的流程。（本文只是将自己在参考原作者的内容的基础上进行自己的一个总结，方便下次使用，如果您遇到问题可以查看[原作者内容](https://gold.xitu.io/entry/577a8dc1128fe1005654d598)，因为里面有了各种问题的解决方法）

具体步骤：
1.反编译滴滴用户端apk，从而得到布局以及图片等文件；
	下载apktool和apktool.bat地址：
		（1）apktool下载地址：[点击下载](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/master/apktool.jar)
		（2）apktool.bat下载地址：[点击下载](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/master/apktool.bat)
		（这里注意一下apktool.bat文件不能自动下载，我们可以通过连接打开网络然后ctrl+s另存为apktool.bat文件。如果还不行请留言我发一下，或者网上也可以自行下载）
		
![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-1.png)

2.反编译滴滴用户端apk，从而得到布局以及图片等文件的apktool文件   滴滴用户端的apk
   滴滴apk下载地址：[点击下载](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/master/didi_siji_xpgod.apk)
   
![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-2.png)

3.反编译得到了这些资源文件
   这个是class文件但是是smali样式的，不方便阅读，下面会讲解使用dex-jar技术解析java文件；
   
dex-jar下载地址：[点击下载](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/master/dex2jar.zip)

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-3.png)

4.由dex2jar.zip解压后得到的文件夹,这里面即将反编译dex.文件（即apk解压后的class.dex）

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-4.png)


5.滴滴的apk把后缀.apk改为了.rar文件，这样就可以解压出下面的文件夹，我们需要使用的文件是classes.dex文件。

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-5.png)

6.将apk解压之后内部的classes.dex文件夹取出来之后放到dex2jar-2.0文件夹里面，进行cmd操作即可获取到jar文件，请看下一步

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-6.png)


7.cmd    d2j-dex2jar.bat classes.dex

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-7.png)

8.cmd操作之后就多出了这3个文件，其中我们要的是classes-dex2jar.jar文件，通过gd-gui.exe应用程序可以进行查看，效果图下面可见：

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-8.png)

9.gd-gui.exe应用程序查看jar文件
   gd-gui下载地址：[点击下载](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/master/jd-gui.exe)

![这里写图片描述](https://raw.githubusercontent.com/hytcyjb/yjboAntiCompilation/06bae97acccf5126c17ca370ded5849b671a7452/ScreenShort/fby-9.png)


以上就是具体步骤，这里没有讲出现的问题，因为原作者的文章里面已经讲得很清楚了，我这里只是粗略的写一下步骤，方便已经使用过的人下次使用快速回忆。

以上所有内容都上传到github上了，喜欢记得star一下。github地址：[https://github.com/hytcyjb/yjboAntiCompilation](https://github.com/hytcyjb/yjboAntiCompilation)
