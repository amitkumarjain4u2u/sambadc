Primary DC with SAMBA-4 and Resara
=======


Below script will help you out to get "Resara" on to "Ubuntu_12.04_amd64"

Note that I have had one PDC based on this script for a demo cluster (pre-prod) and was working great. I haven't tested for GPO's though.

Components Included:
====================

1) libpython2.6, python2.6-dev, rdssamba4, rds, rdsserver, rdsconsole

2) xubuntu-desktop, xrdp, rdesktop, gedit, gnome-network-admin

Script to install Linux PDC - Follow the steps below
========================

Should run as root on a fresh installation of "Ubuntu_12.04_amd_64" (tested).

i) Download the script:  ```python wget https://github.com/girishkg/sambadc/blob/master/resara_v1.0.sh ```


