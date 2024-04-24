#!/bin/bash
# 
# Deb package prerem script for API Server
#
echo ""
echo "Disabling api-server service..."
systemctl stop api-server
systemctl disable api-server
