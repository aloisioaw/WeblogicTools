# !/bin/bash

read -p "Domain:" nome;

echo "Clearing cache...";
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/servers/AdminServer/cache/*;

echo "Clearing upload...";
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/servers/AdminServer/upload/*;

echo "Clearing tmp from AdminServer...";
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/servers/AdminServer/tmp/*;

echo "Clearing tmp from Domain...";
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/tmp/*;

echo "Clearing log files..."
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/servers/AdminServer/logs/*;

echo "Clearing JVM memory drop files..."
rm -rf /home/aloisioaw/Dev/Server/Oracle/Middleware/user_projects/domains/$nome/*.log
