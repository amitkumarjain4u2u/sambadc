#!/bin/bash
###### Resara Server Installer
###### !Warning: Set proper FQDN in /etc/hosts
###### as 123.123.123.123	hostname	hostname.domain.com
######
###### Make sure /etc/hostname
###### contains the same name as in /etc/hosts
###### Resara Server Installer
######
###### Turn off iptables and ip6tables if those are running
######
######
###### ###### Now Starting Resara Server Installer

### http://community.spiceworks.com/topic/326915-samba-4-as-ad-replacement?page=1

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
### Install base utils
sudo apt-get -y install vim sudo ssh openssh-server

### Install xubuntu minimal desktop environment
sudo apt-get install -y --no-install-recommends xubuntu-desktop

### Add ppa sources list to /etc/apt/sources.list

#deb http://ppa.launchpad.net/resaraserver/resaraserver/ubuntu lucid main
#deb-src http://ppa.launchpad.net/resaraserver/resaraserver/ubuntu lucid main


sudo apt-add-repository ppa:resaraserver/resaraserver

## Chanege the ubuntu code name in /etc/apt/sources.list.d/resaraserver-resaraserver-precise.list
## Change "precise" to "lucid"

sudo add-apt-repository ppa:fkrull/deadsnakes

sudo apt-get update
#sudo apt-get install bind9
## Check the bind installation by restarting it and then rebooting to test the same
## If you have any issue starting bind9, then you may have to rebuild the system
## Currently I don't have any debuggin solution for bind TKEY errors.. Sorry!
## So, if you get any TKEY errors, please rebuild your server.

### Now install resara server and its console with Samba4
### In Kerberos installation, you will be asked for domain details
### 1st Option: USE Domain as "EXAMPLE" if you gonna creat "EXAMPLE.COM"
### 2nd Option: USE current server name and its FQDN
### 3rd Option: 

sudo apt-get install libpython2.6 python2.6-dev rdssamba4 rds rdsserver rdsconsole

#####################################################
## Don't worry if you get below warnings, those are ingnorable.
##
## avahi-daemon start/running, process 23596
## Warning: QxtDiscoverableService: Attempting to unregister an unresolved, unregistered service
## *** WARNING *** The program 'rdsd' uses the Apple Bonjour compatibility layer of Avahi.
## *** WARNING *** Please fix your application to use the native API of Avahi!
## *** WARNING *** For more information see <http://0pointer.de/avahi-compat?s=libdns_sd&e=rdsd>
## Warning: QxtDiscoverableService: Failed to register service
## Warning: Failed to publish service. Trying again in 5 seconds...
##
#####################################################

### Time to check Bind9 for working condition again.
### Don't configure anything. Just restart bind9 to see if any errors

### Install some GUI utilities and xrdp
sudo apt-get install gnome-network-admin xrdp rdesktop gedit

### Install phpldapadmin
sudo apt-get install apache2 php5 phpldapadmin
