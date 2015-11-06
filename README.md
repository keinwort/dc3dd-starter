# dc3dd-starter
easy 
Assistant GUI for dc3dd to delete Harddrives and Partitions securly  
with hash and log-file  
planned in future -> enhanced with a printable report in PDF-A for archiving  

~# dc3dd --v..
dc3dd (dc3dd) 7.2.641..

a ruby script  
initialy taken out of the - c't Heise DVD - "Desinfec't 2015"  
so very mucho credits to the folks over there  

(by the way  - c't - is my very favorite computer-magazin)  

 reworked for debian based linux versions (needs more distributions for testing/verifying)  
 tested on kali 2.0 for easier convenience as "root" ;)  
 and mate desktop for lower hardware + lower graphic cards.  
remark: the original script runs on ubuntu-live-dvd with gnome  



.)FAQ  
< ---------------------------------------------------------------------------->  
  
1.) What is "Desinfec't 2015"?  
see: http://heise.de  
http://www.heise.de/ct/hotline/FAQ-Desinfec-t-2015-2753002.html  
http://www.heise.de/forum/heise-Security/Themen-Hilfe/Desinfect/forum-33383/  
https://shop.heise.de/katalog/ct-14-2015  
  
  
2.) License?  
GPL v2.0, as in orginal file.  
  
  
3.) What do i need to install? (i hope i put only needed progs ;) )  
3a. Mate Desktop (i prefer full extras)  
~# apt-get install kali-defaults kali-root-login desktop-base mate-core mate-desktop-environment-extras  
  
3b. things the script needs  
~# apt-get libteam-utils lshw exo-utils ruby-gtk2 ruby-libxml ruby-multi-xml  
  
3c. and of course, but it should be already there  
~# apt-get install dc3dd  
  
  
4.) What do i need to run the script?  
4a. a folder for the logs, (it's hardcoded by now)  
~# mkdir /root/logs/clearing  
  
4b. a folder for the script(s) itself, i would recommend  
~# mkdir /opt/desinfect  
  
4c. the files "dc3dd-starter.rb" + "dc3dd-starter.sh"  
copy or move them to /opt/desinfect/  
  
4d.the correct rights for the files, you may do it more strict if you like  
~# chmod 755 /opt/desinfect && chmod 755 /opt/desinfect/*  
  
  
5.) Why this project?  
need to delete a lot of old IDE-Harddisks(PATA)  
on an old onboard Intel 915 graphics-card based PC  
and a log aka some printable report is needed.  
  
< ---------------------------------------------------------------------------->  
  
  
more to be written  
  
wkr  
stephy rul aka keinwort  
  
  
hint:  
i am a ruby noob  
  
sollte es lizenzprobleme geben, bitte kontakt per github  
und nicht gleich den anwalt schicken  
danke  
  