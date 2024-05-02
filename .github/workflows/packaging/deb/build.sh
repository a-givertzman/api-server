#!/bin/bash
# create a deb package from rust sources
#
############ LIST OF MANAGED VARIABLES REQUIRED FOR DEB PACKAGE ############
name=api-server
# version=x.y.z - reading from first arg $1
descriptionShort="API Server wrapping databases, executable and python scripts plugins"
descriptionExtended="API Server - service running on the socket.
Provides simple and universe access to the databases, executable and python plugins.
Wrapping databases:
 SQLite
 MySQL
 PostgreSQL
Runs puthon script:
 Python script received some json data via stdin
 Python script handle some algorithms
 Python script can access to the databases data via self API or directly
 Python script returns some json data
Runs binaty executable:
 Executable received some json data via stdin
 Executable handle some algorithms
 Executable can access to the databases data via self API or directly
 Executable returns some json data"
changeDetails="
- TcpServer | clean threads
- Some fixes in the TcpConnection
- ApiQuery moved to the library
"
copyrightNotice="Copyright 2024 anton lobanov"
maintainer="anton lobanov <lobanov.anton@gmail.com>"
licenseName="GNU GENERAL PUBLIC LICENSE v3.0"
licenseFile="LICENSE"

############ READING VERSION FROM ARGUMENT ############
RED='\033[0;31m'
NC='\033[0m' # No Color
version=$1
if [[ "$version" =~ [0-9]+\.[0-9]+\.[0-9]+ ]]; then 
	echo "Version: $version"
else
	echo -e "${RED}ERROR${NC}: Version not supplied.\nDebian package build script required proper version of your softvare in the format: x.y.z, passed as argument"
fi
############ LIST OF MANAGED VARIABLES OPTIONAL FOR DEB PACKAGE ############
# preinst, postinst, prerm and postrm scripts:
preinst="./.github/workflows/packaging/deb/preinst"
postinst="./.github/workflows/packaging/deb/postinst"
prerm="./.github/workflows/packaging/deb/prerm"
postrm="./.github/workflows/packaging/deb/postrm"
# list of assets in the format:
# 	<sourcePath> <installPath> <permissions>
assets=(
	"./target/release/api-server /usr/bin/ 755"
	"./.github/workflows/packaging/deb/service/api-server.service /etc/systemd/system/ 644"
	"./config.yaml /home/scada/api-server/"
)
outputDir=target/
# 'any', 'all' or one of the supported architecture (e.g., 'amd64', 'arm64', 'i386', 'armhf')
# you can choose one of the provided by `dpkg-architecture -L` or leave the field blank for automatic detection
arch=
# comma separated list of the package dependecies in the following format:
# "<package_name> [(<<|>>|<=|>=|= <version>)], ..."
# e.g. "foo (>=2.34), bar"
depends=""

# check required variables
echo "Checking reqired variables ..."
missedVarMsg="non-empty value required"
echo "${!name@}=${name:?$missedVarMsg}"
echo "${!version@}=${version:?$missedVarMsg}"
echo "${!descriptionShort@}=${descriptionShort:?$missedVarMsg}"
echo "${!descriptionExtended@}=${descriptionExtended:?$missedVarMsg}"
echo "${!changeDetails@}=${changeDetails:?$missedVarMsg}"
echo "${!copyrightNotice@}=${copyrightNotice:?$missedVarMsg}"
echo "${!maintainer@}=${maintainer:?$missedVarMsg}"
echo "${!licenseName@}=${licenseName:?$missedVarMsg}"
echo "${!licenseFile@}=${licenseFile:?$missedVarMsg}"

echo "Start packaging ..."

############ INITIALIZE THE PACKAGE SOURCE STRUCTURE AND COPY RESOURCES ############

arch=${arch:=$(dpkg --print-architecture)}
debFileName="${name}_${version}_${arch}"
packageRoot=$(readlink -m "/tmp/debian/${debFileName}")

if [[ -d $packageRoot ]]; then
	echo "Freeing the directory for temporary build files ..."
	rm -rf $packageRoot
fi

echo "Creating ${packageRoot} directory for temporary build files ..."
mkdir -p "$packageRoot"
echo "Creating ${packageRoot}/DEBIAN directory ..."
mkdir -p "${packageRoot}/DEBIAN"

copyAsset() {
	sourcePath=$1; targetDir=$2; permissions=$3
	assetPath=$(readlink -m "$sourcePath")
	if [[ ! -d $assetPath && ! -f $assetPath ]]; then
		echo "Asset ${assetPath} not found."
		exit 1
	fi
	installPath=$(readlink -m "${packageRoot}/${targetDir}")
	echo "Copying ${assetPath} to ${installPath} ..."
	mkdir -p $installPath && cp -r "$assetPath" "$installPath"
	if [[ -d $assetPath ]]; then
		echo "Applying permissions ${permissions} to dir ${installPath} ..."
		chmod -R "$permissions" "$installPath"
	elif [[ -f $assetPath ]]; then
		echo "Applying permissions ${permissions} to file ${installPath} ..."
		chmod "$permissions" "${installPath}/$(basename ${assetPath})"
	else
		echo "${RED}Unknown asset type, can't apply permissions ${permissions} to file${NC} ${installPath} ..."
	fi
}
for asset in "${assets[@]}"; do
	read -ra assetOptions <<< $asset
	copyAsset ${assetOptions[0]} ${assetOptions[1]} ${assetOptions[2]}
done
copyAsset ${preinst} "DEBIAN" "755"
copyAsset ${postinst} "DEBIAN" "755"
copyAsset ${prerm} "DEBIAN" "755"
copyAsset ${postrm} "DEBIAN" "755"

############ CREATE A DEB CONTROL FILE ############

echo "Creating ${packageRoot}/DEBIAN/control file ..."
cat > "${packageRoot}/DEBIAN/control" <<- CONTROL
	Section: misc
	Priority: optional
	Version: $version
	Maintainer: $maintainer
	Package: $name
	Architecture: $arch
	Depends: $depends
	Description: $descriptionShort
	$(echo "$descriptionExtended" | sed "s/^/ /")
CONTROL

############ CREATE CHANGELOG AND COPYRIGHT FILES ############

docDir="${packageRoot}/usr/share/doc/${name}"
mkdir -p "$docDir"

echo "Generating changelog file ..."
changelogFile="${docDir}/changelog"
cat > "$changelogFile" <<- CHANGELOG
	$name ($version) unstable; urgency=medium

	$(echo "$changeDetails" | sed "s/^/  * /")

	$(echo " -- $maintainer  $(date -R)")


CHANGELOG
gzip -n --best "$changelogFile"
rm -f "$changelogFile"

echo "Generating copyright file ..."
copyrightFile="${docDir}/copyright"
cat > "$copyrightFile" <<- COPYRIGHT
	Format: https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
	Upstream-Name: $name
	Copyright: $copyrightNotice
	License: $licenseName
	$(cat "$licenseFile" | sed "s/^/ /")
COPYRIGHT

############ CREATE MD5 SUM FILES ############

cd $packageRoot
md5sum $(find . -type f -printf "%P\n" | grep -v "^DEBIAN/") > DEBIAN/md5sums
cd - > /dev/null

############ BUILD A DEB PACKAGE ############
echo "Building deb package ..."
# -Zxz - to to change the compression method from zstd to xz (zstd - supported since debian 12)
dpkg-deb -Zxz --build "${packageRoot}" "$outputDir" > /dev/null || exit 1 
echo "Deleting temporary created ${packageRoot} directory"
rm -rf "${packageRoot}"
echo "Debian package created and saved in $(readlink -m "${outputDir}/${debFileName}.deb")"