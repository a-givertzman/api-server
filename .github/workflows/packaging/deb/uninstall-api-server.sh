#!/bin/bash
echo ""
echo "disabling api-server service..."
sudo systemctl stop api-server
sudo systemctl disable api-server

echo ""
echo "uninstalling api-server..."
sudo apt purge -y api-server

echo ""
echo "removing api-server service unit file..."
sudo rm /etc/systemd/system/api-server.service

echo ""
echo "reloading systemd..."
sudo systemctl daemon-reload
sudo systemctl reset-failed

# systemctl stop [servicename]
# systemctl disable [servicename]
# rm /etc/systemd/system/[servicename]
# rm /etc/systemd/system/[servicename] # and symlinks that might be related
# rm /usr/lib/systemd/system/[servicename] 
# rm /usr/lib/systemd/system/[servicename] # and symlinks that might be related
# systemctl daemon-reload
# systemctl reset-failed
