![db](https://user-images.githubusercontent.com/84611854/221420239-9745ac95-bdb1-44bc-968e-4919f53344a0.png)


# HexFalc's Debian Termux Scripts
Just some shitty scripts I made for fast installing Debian using proot-distro

At the moment there is only one script and a tutorial to only install a GUI version of Debian.

I'm not good at this things so feel free to give suggestions and report issues and mistakes in the issue and pull request sections.

# Tutorial
## Installing Debian
Open Termux and use this command:

[

curl -LO https://raw.githubusercontent.com/Hexfalc/Debian-Termux-HexFalc-Scripts/main/debian-t-script.sh && bash debian-t-script.sh

]

![Screenshot_2023-02-26-14-49-45-77_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221415030-e643eebc-73d2-45aa-82c8-23acae775bfe.jpg)

This will install a script, that will update Termux packages and install proot-distro to install Debian.

After the script finishes doing everything you will see this:

![Screenshot_2023-02-26-14-53-44-92_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221415119-a31eb52f-dd60-4574-956f-1bbeaccc24f4.jpg)

You succefully installed Debian, now you can login into it using "debian" command or using "proot-distro login debian".

You can exit from Debian by typing "exit".

## Creating your own user in Debian

Now login into Debian and use "apt update" to update the packages.

Now install sudo and nano by using "apt install sudo and nano".

Now add your own user using "adduser [add your user name here]" and follow the instructions, you can skip the other stuff after typing and confirming your new password pressing simply enter on your phone keyboard.

After you setuped your user, use the command "nano /etc/sudoers" and a screen like this will show up:

![Screenshot_2023-02-26-15-23-46-08_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221416463-8aa78d7a-b50a-4979-a12e-0e5e77f5b117.jpg)

Scroll down using termux's arrow keys to "root    ALL=(ALL:ALL) ALL" line and add a line below like this "[add your user name here]    ALL=(ALL:ALL) ALL".

![Screenshot_2023-02-26-15-30-29-92_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221416817-0c8e2b7f-a82d-494a-8327-91fd8464c020.jpg)

Now press termux's Ctrl + X, then y and press Enter to save.

![Screenshot_2023-02-26-15-33-45-34_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221419058-59e043a9-71f3-4bf5-8082-6869adea18d8.jpg)


Now you can login to your user using "su [add your user name here]".

### Login to user directly when typing "debian" command

If you want to login into your user everytime you type "debian", exit Debian and return to Termux using "exit". If it return to Debian root user retype "exit".

Outside Debian, in Termux, use the command "nano $PREFIX/bin/debian" and something like this will showup:

![Screenshot_2023-02-26-15-48-12-29_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221419037-e327a253-beb4-4788-a4df-50064f34e260.jpg)


Now add "--user [add your user name here]" after "proot-distro login debian".

![Screenshot_2023-02-26-15-48-50-86_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221419126-265eddc3-9b6b-470b-8e76-b928b5be8ca7.jpg)


Now like before press Ctrl + X, then y and and after Enter to save.

Now use the command "debian" and you should be directly in your user.

![Screenshot_2023-02-26-15-51-07-01_84d3000e3f4017145260f7618db1d683](https://user-images.githubusercontent.com/84611854/221419191-21ecc017-823d-41a3-aa57-1860bd68d681.jpg)
