Primary DC with SAMBA-4 and Resara
=====================  
Below script will help you out to get "Resara" on to "Ubuntu_12.04_amd64"  
Note that I have had one PDC based on this script for a demo cluster (pre-prod) and was working great. I haven't tested for GPO's though.  

I. Components Included:  
====================

1) libpython2.6, python2.6-dev, rdssamba4, rds, rdsserver, rdsconsole  
2) xubuntu-desktop, xrdp, rdesktop, gedit, gnome-network-admin  

II. System Requirement:
=======================
1) Tested on fresh Ubuntu_12.04_x86 Server  
2) Choose system hardware/vm resource as per your standards  
3) Turn off firewalls (```iptables and ip6tables```)  
4) Setup the host name into FQDN  
5) Setup network properly including default gateway  
6) Server needs to have internet access to get packages and dependencies  
7) Configure your network proxy or firewall accordingly to allow internet access onto this server  

III. Script to install Linux PDC - Follow the steps below
========================  
Should run as root on a fresh installation of "Ubuntu_12.04_amd_64" (tested).  
i) Download the script:  ```wget https://github.com/girishkg/sambadc/blob/master/resara_v1.0.sh```  
ii) Make it executable: ```chmod +x resara_v1.0.sh```  
iii) Execute the script: ```./resara_v1.0.sh```  

Thats it, it is Done now!!!!!
===================  
Reboot the server and configure the domain controller by using researa GUI
  
IV. What the script is doing?  
=============================  
It will  
a. Update the server  
b. Install x-ubuntu minimal desktop environment  
c. Add ubuntu ppa/resera repository  
d. Add ubuntu ppa/fkrull:deadsnake repository  
e. Install libpython2.6, python2.6-dev, rdssamba4, rds, rdsserver, rdsconsole  
f. Install xubuntu-desktop, xrdp, rdesktop, gedit, gnome-network-admin  


