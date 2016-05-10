# !/bin/bash

#read -p "Domain:" nome;

echo "Initializing setDomainEnv"
/Path/To/wlserver_10.3/server/bin/./setWLSEnv.sh

echo "Initializing WLST"
java -cp /Path/To/wlserver_10.3/server/lib/wlfullclient.jar weblogic.WLST ClearJMSMessage.py
