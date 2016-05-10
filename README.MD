This repository contains some tools that I use to maintain my Weblogic domains.

*  ClearCacheDomain.sh: is a shellscript that clears temporary, upload and cache folders from Weblogic. To date, it uses a fix path, and an input variable that is the domain name that is going to be cleared;
*  ClearJMSMessages.sh and ClearJMSMessages.py: script that uses a t3 connection to Weblogic, so it can clear messages from a Topic. 
