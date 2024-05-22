开始!
- 下载 zip，将其放在您想要的任何位置,以及解压
- 找到文件夹为:korepi
- 打开korepi获取HWID(机器码),会自动复制HWID
- 打开文件里面有first-time-setup.bat(首次使用启动程序)
- 运行first-time-setup.bat后，您将看到此消息。
  ![image](https://github.com/Zhongli0401/korepi-tools/assets/124914913/0ac47e12-2447-48fd-9ba7-11f1710a25cf)
- - 选择YES(是)
- 需要填写HWID(机器码)
  ![image](https://github.com/Zhongli0401/korepi-tools/assets/124914913/cb4e2983-03a4-4c8c-be58-d62123374701)
- 写入HWID
- ![image](https://github.com/Zhongli0401/korepi-tools/assets/124914913/e1c7a1ce-03e5-4215-9db5-d701a8cc155c)
- - 按回车(Enter)
- 现在它会说安全警告请按是(yes)
- ![image](https://github.com/Zhongli0401/korepi-tools/assets/124914913/877eeec8-a1d1-4e7c-ac87-c2501f781399)
- - 等待......
- 现在Node.js将要求访问，选择专用网络和公共网络，然后单击“允许访问(yes)”
![image](https://github.com/Zhongli0401/korepi-tools/assets/124914913/b07c0707-a9e1-4728-b419-616c1cdd99a1)
--享受korepi!

问题解答
1. 添加了Node.js，因此无需手动安装。
2. 添加了lol.dll以直接路径访问md5c.korepi.com.pub
3. 当您运行first-time-setup.bat或start.bat时，它将创建一个“C:/miku”文件夹，请勿删除该文件夹
4. Injector.exe依赖于此，因为每台电脑都有 C 驱动器，我在那里添加了lol.dll以自动加载，无需用户交互
5. lol.dll在此存储库中进行了一些修改，以便直接访问位于“C:/miku”中的md5c.korepi.com.pub
6. lol.dll将在每个版本的Korepi中更新，因此不必担心更新。
7. 如果一切顺利，没有错误，但Korepi仍然拒绝运行，只需使用 start.bat，这是Korepi 的常见问题。

Q：最后一个文件确定后，出现进程崩溃的提示，退出代码：0x0000409
A：清除你的hosts文件，该文件位于C:\Windows\System32\drivers\etc\hosts，一定要清理它，而不仅仅是禁用里面的分辨率确保你运行的korepi版本是1.3.1.3 。如果不是，请使用压缩包中的korepi.exe覆盖您当前的版本
Q：提示用户不存在（user not exit）
A：检查您本地的DNS服务器是否已经启动，DNS服务器是否指向127.0.0.1 检查本地的443端口是否开放
Q：关闭程序后无法访问互联网
A：请确保您没有手动关闭脚本窗口，不要手动关闭系统管理员提示窗口，它会在Korepi验证程序关闭后自行关闭，并恢复您的网络设置手动恢复方法：运行工具文件夹中的“NetRestore”脚本
Q：本地服务器崩溃，korepi提示进程崩溃，退出码：0x0000409
A：关闭你的网络代理，尤其是OpenClash

-  来源：Fad#1234
- korepi57 工具开发用于初始bat 文件 n 东西
- 匿名提供测试密钥
- notmarek 帮助找到有效负载签名的盐
- kkk_1999 for cn 教程视频
