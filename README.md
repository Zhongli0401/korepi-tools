 ### Korepi-tools

[![cn](https://img.shields.io/badge/语言-website-lightcyan.svg)](https://c1m21jrvvi4.feishu.cn/docx/GQ1Fd6OLhocDhFx6vzGcJXPYn2b) [![cn](https://img.shields.io/badge/语言-github-lightcyan.svg)](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/Readme-Zh-CN.md) [![alternate-link](https://img.shields.io/badge/alternate-download-lightcyan.svg)](https://gi2.pmagickline.xyz/other/korepi-tools/github_simplified/) [![release](https://img.shields.io/badge/github-release-lightcyan.svg)](https://github.com/Zhongli0401/korepi-tools/releases)




![working](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/working.png)

### Join bkebi discord to know more

<div align=center>
<img src="https://github.com/Bkebi-Group/Bkebi-GC-Release/raw/main/.github/logo.svg" width="520"/>
</div>

<p align="center">
	<a href="https://github.com/Zhongli0401/korepi-tools/releases/latest"><img src="https://img.shields.io/github/v/release/Zhongli0401/korepi-tools?style=for-the-badge&logosize=auto&color=lightcyan"></a>
	<a href="https://github.com/Zhongli0401/korepi-tools/releases"><img src="https://img.shields.io/github/downloads/Zhongli0401/korepi-tools/total.svg?style=for-the-badge&color=lightcyan"></a>
	<a href="https://discord.com/invite/QwuyRNq4rf"><img src="https://img.shields.io/discord/1026295403282436097?label=Discord&logo=discord&style=for-the-badge&color=lightcyan"></a>
</p>


#### Steps

- Download the zip from release extract it put it anywhere you want.
- Korepi.exe get it from [Korepi](https://github.com/Cotton-Buds/calculator/releases)  put it inside of **"korepi"** folder and rename it to korepi.exe
- Run **korepi.exe** to get the **HWID** copy it as it will be needed later.
- Now run **first-time-setup.bat** in **"miku-tools"** folder.
- After you run **first-time-setup.bat** you will be greeted by this message.
            ![message](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/img/root-certdel.PNG)
- Select **Yes**
- Now it will ask for your **HWID** put it in the console
            ![hwid](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/img/hwid.PNG)
            ![hwiden](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/img/hwiden.png)
- Press **enter**
- Now it will say **security warning** you are about to miku miku mik..... press **Yes**
            ![certsave](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/img/certsave.PNG)
- Now wait.....
- Now **Node.js** will ask for access select both **private network and public networks** and click Allow access 
           ![access](https://github.com/Zhongli0401/korepi-tools/blob/miku_oneclick_all/img/access.PNG)
- Enjoy korepi
- After running **first-time-setup.bat** once don't touch it just use **start.bat** for future launch


https://github.com/Zhongli0401/korepi-tools/assets/76640596/bb8a1fae-93be-4c7f-9c60-543cae295694


FAQ
1. Added **Node.js** so no need to install it manually.
2. Added **lol.dll** for direct path access to **md5c.korepi.com.pub**
3. When you run **first-time-setup.bat** or **start.bat** it will create a "C:/miku" folder donot delete that
4. **Injector.exe** is relient on that as every pc has c drive i added the **lol.dll** there to auto load without user interaction
5. **lol.dll** is a bit modified in this repo for direct access to the **md5c.korepi.com.pub** located in **"C:/miku"**
6. **lol.dll** will be updated every version of **Korepi** so don't worry about updates.
7. if everything goes well no errors but **Korepi** still refuses to run just use start.bat it's a **Korepi** common issue.

Q: The last File OK is followed by a prompt of process crashed, exit code: 0x0000409

A: Clear your hosts file, which is located at C:\Windows\System32\drivers\etc\hosts, make sure to clean it, not just to disable the resolution inside
  Ensure that the version of korepi you are running is 1.3.1.3. If it is not, please overwrite your current version with the korepi.exe found in the compressed package

Q: It prompts that the user does not exist (user not exist)

A: Check if your local DNS server has started and the DNS server points to 127.0.0.1
   Check if the local port 443 has been opened

Q: Unable to access the internet after closing the program

A: Please make sure that you did not manually close the script window, don't manually shut down the system administrator prompted window, it will close itself after the Korepi verification program is closed, and restore your network settings
   Manual recovery method: Run the "NetRestore" script in the tools folder

Q: The local server crashed, and korepi prompts process crashed, exit code: 0x0000409

A: Turn off your network proxy, especially OpenClash

- credits : Fad#1234 
- korepi57 tool dev for the initial bat files n stuff
- Anonymous for providing a key for testing
- notmarek for his help in finding the salt for the payload signature
- kkk_1999 for cn tutorial video




