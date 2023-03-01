clear && echo "XFCE4 Install Script for Debian In Termux by HexFalc" && echo "" && echo "" && echo "Updating and upgrading packages" && echo "" && sudo apt update && sudo apt upgrade && clear && echo "Installing XFCE4 and TigerVnc" && echo "" && sudo apt install xfce4 xfce4-goodies tigervnc-standalone-server && clear && echo "vncserver -geometry 800x600" >> /bin/vncstart && chmod +x /bin/vncstart && echo "vncserver -kill :1" >> /bin/vncstop && chmod +x /bin/vncstop && clear && echo "You succefully installed XFCE4, to start a vnc use [vncstart] and to stop a vnc use [vncstop]. You can use [nano /bin/vncstart] to change vncserver configuration, for ex. changing resolution, default is 800x600." 
