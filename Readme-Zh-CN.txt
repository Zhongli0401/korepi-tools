1. 先打开korepi.exe一次，会跳转下载页面，下载新版并打开一次（不要覆盖掉旧版korepi），提示没有找到密钥文件并自动复制HWID，关闭korepi

2. 打开"2首次使用启动程序.bat"，提示Enter HWID:时，右键窗口以粘贴你刚刚复制的HWID

3.提示安装证书选择是

4.Enjoy Korepi !!!!!

当你执行过一次"2首次使用启动程序.bat"后，后续启动只需要执行"启动程序.bat"即可

FAQ

Q: 最后File OK后提示process crashed, exit code: 0x0000409

A: 清空你的hosts文件，它位于C:\Windows\System32\drivers\etc\hosts，要清空而不是禁用掉里面的解析
    确保你启动的korepi版本为1.3.1.2，如果不是，请使用压缩包里的korepi.exe覆盖掉你当前的版本

Q: 提示用户不存在(user not exist)

A: 检查你的本地DNS服务器是否启动，并且DNS服务器指向127.0.0.1
    检查本地443端口是否已经放通

Q: 关闭程序后无法上网

A: 请确保你没有手动关闭脚本窗口，提示有系统管理员的窗口不要手动关闭，它会在korepi验证程序关闭后自行关闭并恢复你的网络设置
    手动恢复方法：执行tools文件夹内"NetRestore"脚本

Q: 本地服务端闪退，提示process crashed, exit code: 0x0000409

A: 关闭你的网络代理，特别是OpenClash

破解编辑于05/16，不保证持久可用性