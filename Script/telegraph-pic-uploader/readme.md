### 这是什么？



它是一个脚本，可以帮助您一次将批量图像上传到电报，支持 jpg,png,gif。 这样您就不需要手动一一上传。

对于超过电报最大大小5MB的图片，它还可以自动生成原始图像的压缩副本并上传。

是不是很酷，哈哈。

### 工作原理?



该脚本基本上使用 telegraph.api 来创建文章。

首先它会扫描文件夹并将图片一张一张上传到telegraph，然后收集图片在线链接并使其成为<img>标签，然后将其添加到html代码中。

最后，发表文章。

### 怎么使用？



1. 安装 python 3。 (可以自行百度一下)
2. 从下面的链接下载脚本。可以直接去右边release下载压缩包。https://github.com/ztdf123/telegraph-pic-uploader
3. 打开 cmd窗口 并使用以下命令安装所需的库。（8.20修复了requirements.txt文件）                                    ***pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --user\***
4. 运行脚本。如果你没有IDE，在脚本的路径下打开cmd窗口之后，使用如下命令： python  telegraph--pic-uploader_v1.py。（如果还是有疑问，请百度或者联系我）

### 详细信息（必读）



由于我的国家的网络封锁了telegra.ph，脚本默认使用代理。

如果您不需要使用代理，请在脚本中注释以下代码：

***telegraph._telegraph.session.proxies\***

并删除代码 ***requests.post\*** 函数中的 ***proxies=myproxies\***

如果找不到上面的代码请善用搜索功能。

如果您确实需要使用代理，我建议使用与默认设置匹配的 Clash For Windows。 如果您使用的是其他代理软件，请自行设置 ip 和端口。

发布前，别忘了设置将显示在标题下方的 author_name。

也可以设置 author_url， 这是一个在有人单击您的 author_name 时跳转的链接。                                                                         

### 运行脚本后



输入包含您要上传的图片的文件夹的完整路径

我建议从 Windows 资源管理器中复制它。

例如：D:\test\pics

输入标题，例如：Hello_Kris

以 html 格式输入上下文。

例如：<p>这里有一些图片。 享受吧！</p>

### FAQ

- **为什么上传这么慢?**

如果您的上传频率太高，telegra.ph可能会主动断开与您的连接。

所以，我在上传图片后设置了 5 秒的睡眠时间。 您可以随意将其更改为更大或更小，可以根据你的网络环境，在速度和稳定之间找一个平衡。

睡眠代码位于 ***bianli_pics\*** 函数中。

修改 ***time.sleep(5)\*** 里面的数字，单位是秒。

- **发布了文章后我还能管理和编辑他们吗?**

可以！您只需要查看 **高级使用** 部分。

### 高级使用



要阅读这部分，您可能需要了解一点 python 并愿意修改脚本。



token是识别您身份并访问您文章的唯一途径。 如果要在发表文章后对其进行管理和编辑，则必须在脚本中设置自己的token。

这里提供获取您自己的令牌的一种方法。

1. 添加这个机器人。  https://t.me/telegraph                                                                           通过此机器人您可以管理您的帐户和文章。
2. 在机器人界面，点击 ***Login in as xxx on this device\***.
3. 如果你用的是 ***Google Chrome\****.* 

确保你是登陆状态，点击这里。                                                                                           

![img](https://telegra.ph/file/c9cabc5ea700bbb299f69.jpg)



找到token然后复制它。

![img](https://telegra.ph/file/7f6670875e24ec13a9f68.jpg)



然后将token粘贴到脚本中，然后注释下面这行代码，

***telegraph.create_account\***

然后运行脚本，发布文章。

如果您已经登录，当您打开刚刚使用脚本发布的文章时，您应该会在右侧看到EDIT编辑按钮。

### 写在最后



这个脚本可能有一些bug，如果你发现了，请告诉我，这里提前致谢。

如果您仍有任何问题，请在电报上联系我。

这是我的账户: [@javbest0_admin](https://t.me/javbest0_admin)