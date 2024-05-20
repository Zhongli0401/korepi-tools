[update](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/update.md)

--------------------------------------------------------Korepi tools-------------------------------------------------
### For those who getting error 409 check the injector the dll is missing there add the dll  as u saw in the image

![injector](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/injector.PNG)


![working](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/working.png)

 ## Run korepi.exe get it from [korepi](https://github.com/Cotton-Buds/calculator/releases) 

### video

 [![tutorial](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/genshin.PNG)](https://www.youtube.com/embed/AyLxVRpoI14)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[![cn tutorial](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/genshin.PNG)](https://www.youtube.com/embed/LPUsTq9Bzd8)   

- by kkk_1999


### p.s put the korepi file in the root folder of miku_simplified

![example](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/korepi.PNG)

 ### 1.Download the new version and open it once
  It will prompt that the key file is not found and automatically copy the HWID, then close the korepi   
  - save the hwid we will need that later

  #### set host file found in C:\Windows\System32\drivers\etc
                    127.0.0.1 ghp.535888.xyz
                    127.0.0.1 md5c.535888.xyz

![0.1.host.PNG](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/0.1.host.PNG)



# Make sure node is installed 
 ### [NODEJS](https://nodejs.org/en/download/package-manager)

 #### now make sure extremely sure that u follow all the steps {step 1 is only for those who used previous crack a.k.a 1.3.1 korepi hack\}

 
 - we start at miku_simplified/tools/certmgr.exe run it as admin go to "trusted root certification authorities" check img 0cert now scroll down to 
       "md5c.korepi.com" remove it {only for those who use previous crack}
   ![example](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/0Cert.PNG)
   ![example2](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/1cert.PNG)
   
 -After removing it in 	   miku_simplified run "step2.bat" , when prompted with "Enter HWID: ", right-click the window to paste the HWID you just copied and select yes 

 - ah u can get the pub file at miku_simplified\tools\certs\md5c.korepi.com.pub

 - if korepi crashes at after taking the cert "pub-crash.png" check your cfg.ini use my cfg.ini.orig rename to cfg.ini and put your genshin exe PATH
   ![pub-crash](https://github.com/Zhongli0401/korepi-tools/blob/miku_bat/img/pub-crash.png)
 - Choose yes when prompted to install the certificate

 - Enjoy Korepi !!!!!

##### After you have run "step2.bat" once, subsequent starts only need to run "启动程序.bat"

#### P.S if u have issue with your net service run NetRes.bat


##### to update from version 1.3.1.3.fixv2 to fix v3
 - download latest korepi
 - delete certs folder in tools/certs
 - delete enc.json in both tools and korepi-tools folder
 - then run step2.bat enter your hwid select yes get enc.json
 - if everything goes right and the game doesnot launnch its korepi issue
 - enjoy korepi

FAQ

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


		    
          




