## Lab 1 (take home lab, 01/27/25)

**Step 1. Download and install Visual Studio Code (VScode) from [here](https://code.visualstudio.com/Download)** 
**Step 2. Open VScode to install the **Remote SSH** extension from the Visual Studio Marketplace:**
  1. Open up vscode and click the 'building blocks' icon on the left hand side of vscode 
  2. In the upper left search bar, type 'Remote SSH'
  3. Click 'install'

**Step 3.Use VScode to establish a connection with RON HPC (High Performance Computing) server through vscode [see here](https://code.visualstudio.com/docs/remote/ssh).** 
Note: If you have problems with this step, still proceed to step 4.
### How to set up remote-ssh so that you can connect to RON  
  1. Open the vscode 'command palette' by pressing 'CMD + Shift + P'. A little bar at the top of the screen should pop up. Begin to type 'Remote-SSH: Add New SSH Host...'. Before you get too far, you should see the option pop-up. Click it. If you are asked what the host operating system is, click **LINUX**
  2. **Enter your username and password when prompted.** The username is the students id.
```   
ssh username@ron.sr.unh.edu
```
Replace "username" with your actual USNH username (see example for me below).  After you press enter, you'll be prompted for your password. Note that it likely won't show any indication that you're typing your password. If you mistype your password too many times in too short of a period, the server will block further connections. If this does happen, you can use the USNH VPN to bypass the block and try again. You don't normally need the VPN to connect to Ron though, whether at home or on campus.

Username example: jtm1171@ron.sr.unh.edu  
Password example: jtm1171zfG!1  

Once connected, you will be using Bash (the shell).  If you're unfamiliar with using Bash or Linux commands in general, please review this tutorial video series. There are many videos, but you'll want to focus on videos [1-10](https://nam12.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DIrl8VXxqs8o%26list%3DPLLV_tmUM69VA4B0DKfNEBsaL9ARlpp__W%26index%3D2&data=05%7C02%7CJeffrey.Miller%40unh.edu%7C3753a6ba58c342aa545f08de5dd942c8%7Cd6241893512d46dc8d2bbe47e25f5666%7C0%7C0%7C639051384859528675%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=iwF0UJEwE%2Bgxw5hVeMMRGdmwJDls76KnLyi3UVrIXcw%3D&reserved=0)

**Step 4. Sign up for a GitHub account [here](https://github.com)**
Follow the instructions provided by GitHub

**Step 5 From a from your GitHub account, **fork** this repository: https://github.com/jthmiller/gen711-811.git**
![fork image](../images/fork.png)
- If you can't find the 'fork' button, you can try this [shortcut](https://github.com/jthmiller/gen711-811/fork)    

**Step 6. Clone the gen711-811 github in your home directory on RON:**




<center><b> Important!<br>To get credit for lab 1, submit a link (canvas) to your GitHub page. </b></center>