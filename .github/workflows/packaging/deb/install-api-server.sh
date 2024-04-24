#!/bin/bash
rm -rf /tmp/api-server
git clone --progress -b packaging https://github.com/a-givertzman/api-server.git /tmp/api-server
current=$PWD
cd /tmp/api-server

echo ""
echo "building release..."
cargo build --release

echo ""
echo "building deb package..."
/tmp/api-server/.github/workflows/packaging/deb/build.sh 

echo ""
echo "installing api server"
sudo apt install -y /tmp/api-server/target/api-server_0.1.15_amd64.deb

echo ""
echo "enabling api-server service..."
sudo systemctl daemon-reload
sudo systemctl --now enable api-server

echo ""
echo "cleaning temp files..."
# rm -rf /tmp/api-server
