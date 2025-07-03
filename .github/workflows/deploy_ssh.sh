#!/bin/bash
NC='\033[0m'
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green

targetUser='root'
targetHost='95.142.42.240'
targetPath='/tmp/'
version='0.2.2'
package=api-server_${version}_amd64.deb
packagePath=target/$package

echo -e "Building deb package '$package'..."
rm -f $packagePath
cargo build --release --target x86_64-unknown-linux-musl
'.github/workflows/packaging/deb/build.sh' $version

echo -e "Clearing target '$targetHost:$targetPath$package' ..."
ssh $targetUser@$targetHost "rm -f $targetPath$package"

echo -e 'Coping a new package to the '$targetHost:$targetPath' ...'
rsync -avz -e 'ssh' $packagePath $targetUser@$targetHost:$targetPath

echo -e "Installing on $targetHost package '$package' ..."
ssh $targetUser@$targetHost "sudo apt remove api-server -y"
ssh $targetUser@$targetHost "sudo apt install $targetPath$package -y"

echo -e "Deploy done to '$targetHost'"
