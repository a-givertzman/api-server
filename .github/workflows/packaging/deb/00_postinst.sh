#!/bin/bash
# 
# Deb package prinst script for API Server
#
echo ""
echo "Enabling api-server service..."
systemctl daemon-reload
systemctl enable api-server
systemctl start api-server
