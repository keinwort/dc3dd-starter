#### dc3dd-starter  
easy  
Assistant GUI for dc3dd to delete Harddisks and Partitions securely  
with hash and log-file  
planned in future -> enhanced with a printable report in PDF-A for archiving  
  
#### currently tested with "COMPLETE Harddisks ONLY"
  
~# dc3dd --v  
dc3dd (dc3dd) 7.2.641  
  
a ruby script  
initially taken out of the - c't Heise DVD - "Desinfec't 2015"  
so very mucho credits to the folks @ Heise  
  
(by the way  - c't - is my very favorite computer-magazin)  
  
 modified and enhanced for debian based linux versions  
 (needs more distributions for testing/verifying)  
 tested on kali 2.0 for easier convenience as "root" ;-)  
 and mate desktop for lower hardware + lower graphic cards.  
remark: the original script runs on ubuntu-live-dvd with gnome  
  
  
  
> ---------------------------------------------------------------------------- <  
#### .)FAQ  
  
- 1.) What is "Desinfec't 2015"?  
see: http://heise.de  
http://www.heise.de/ct/hotline/FAQ-Desinfec-t-2015-2753002.html  
http://www.heise.de/forum/heise-Security/Themen-Hilfe/Desinfect/forum-33383/  
https://shop.heise.de/katalog/ct-14-2015  
  
  
- 2.) License?  
GPL v2.0, as in original file.  
see http://www.heise.de/forum/heise-Security/Themen-Hilfe/Desinfect/Re-Desinfect-PXE-CIFSIGS-Loesung/posting-2158568/show/
  
- 3.) What do i need to install (in Kali2.0)? (i hope i put only needed progs ;) )  
  - 3a. Mate Desktop (i prefer full extras)  
~# apt-get install kali-defaults kali-root-login desktop-base mate-core mate-desktop-environment-extras  
  
  - 3b. things the script needs  
~# apt-get install libteam-utils lshw exo-utils ruby-gtk2 ruby-libxml ruby-multi-xml  
  
  - 3c. and of course, but it should be already there  
~# apt-get install dc3dd  
  
  
- 4.) What does i need to run the script?  
  - 4a. a folder for the logs, (it's hardcoded by now)  
~# mkdir /root/logs && mkdir /root/logs/clearing  
  
  - 4b. a folder for the script(s) itself, i would recommend  
~# mkdir /opt/desinfect  
  
  - 4c. the files "dc3dd-starter.sh" + "dc3dd-starter.rb"  
copy or move them to /opt/desinfect/  
  
  - 4d. the correct rights for the files, you may do it more strict if you like  
~# chmod 755 /opt/desinfect && chmod 755 /opt/desinfect/*  
  
  - 4e. start the script  
   -4e.I: with the "SH-File" in a terminal  
 (to see a bit of output or for error checking)  
  ~# sudo /opt/desinfect/dc3dd-starter.sh  
  or  
   -4e.II: set up a starter on the desktop  
with command "sudo /opt/desinfect/dc3dd-starter.sh"  
  
  
 - 5.) for a nice PDF-Report  
   ~# apt-get install unoconv libreoffice-base  
  
  
 - 6.) Why this project?  
need to delete a lot of old IDE-Harddisks(PATA)  
on an old onboard Intel 915 graphics-card based PC  
and a log aka some printable report is needed.  
  
> ---------------------------------------------------------------------------- <  
  
  
  
# ---------------------------------------------------------------------------- #  
  
#### about dc3dd  
sourceforge project page  
http://sourceforge.net/projects/dc3dd/  
  
a test report of the National Institute of Justice, U.S. Department of Justice, by
the Office of Law Enforcement Standards of the National Institute of Standards and Technology  
see https://www.ncjrs.gov/pdffiles1/nij/236225.pdf  
  
# ---------------------------------------------------------------------------- #  
  
  
  
< ---------------------------------------------------------------------------- >  
  
Some important readings on Hidden Data Areas:  
+ DCO (Device Configuration Overlay)
+ HPA (Host Protect Area)   
-------------------------------------------------------------  
!!! BE VERY CAREFUL WITH THIS !!!  
HDPARM  
http://man7.org/linux/man-pages/man8/hdparm.8.html  
  
English:  
http://superuser.com/questions/642637/harddrive-wipe-out-hidden-areas-like-hpa-and-dco-also-after-malware-infectio  
http://serverfault.com/questions/56280/fastest-surest-way-to-erase-a-hard-drive/537341#537341  
https://tinyapps.org/docs/wipe_drives_hdparm.html#n4  
https://en.wikipedia.org/wiki/Host_protected_area  
  
  
  
Deutsch:  
https://wiki.debianforum.de/Hdparm#Funktion_freischalten (DCO)  
https://wiki.debianforum.de/Hdparm#HPA_-_Host_Protect_Area (HPA)  
  
< ---------------------------------------------------------------------------- >  
  
  
  
x ---------------------------------------------------------------------------- x  
  
some hints:  
- autologin in kali  
(but be aware that this could be a very great security risk)  
 edit the file "/etc/gdm3/daemon.conf"  
 in the daemon section uncomment these 2 lines for automatic login  
        
        [daemon]  
        # Enabling automatic login  
        AutomaticLoginEnable = true  
        AutomaticLogin = root  
  
  
- set mate desktop environment as default  
 execute and select mate-seesion as default  
~# update-alternatives --config x-session-manager  
  
  
- autostart sshd at start  
 execute  
~# update-rc.d ssh enable  
  
x ---------------------------------------------------------------------------- x  
  
  
  
more to be written  
  
wkr  
stephy rul aka keinwort  
  
  
yet an other hint:  
i am a ruby noob  
  
sollte es lizenzprobleme geben, bitte kontakt per github  
und nicht gleich den anwalt schicken  
danke  
  