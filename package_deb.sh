#!/bin/bash
# create a deb package from rust sources

name=api-server
upstreamVersion=0.1.14
# 'any', 'all' or supported architecture
# leave blank for automatic detection 
arch=
# package dependency list
depends=
description="A simple api server"
changelog="Some changes here"
maintainer=a-givertzman
# declare source files and output folder
# list of sources in the format:
# 	<sourcePath> <destinationFolder> <permissions>
assets=(
	"target/release/api-server /usr/bin/ 755"
)
outPath=target

echo "Start packaging ..."

############ INITIALIZE THE PACKAGE SOURCE STRUCTURE AND COPY RESOURCES ############

arch=${arch:=$(dpkg --print-architecture)}
fullName="${name}_${upstreamVersion}_${arch}"
fullOutPath="${outPath}/debian/${fullName}"
echo "Creating ${fullOutPath} directory ..."
mkdir -p "$fullOutPath"
echo "Creating ${fullOutPath}/DEBIAN directory ..."
mkdir -p "${fullOutPath}/DEBIAN"

copyAsset() {
	sourcePath=$1; destinationFolder=$2; permissions=$3
	assetPath=$(readlink -m "$sourcePath")
	assetOutPath=$(readlink -m "${fullOutPath}/${destinationFolder}")
	mkdir -p $assetOutPath && cp -r "$assetPath" "$assetOutPath"
	echo "Copying ${assetPath} to ${assetOutPath} ..."
	if [[ -d $assetPath ]]; then
		chmod -R "$permissions" "$assetOutPath"
	elif [[ -f $assetPath ]]; then
		chmod "$permissions" "${assetOutPath}/$(basename ${assetPath})"
	fi
}
for asset in "${assets[@]}"; do
	read -ra assetOptions <<< $asset
	copyAsset ${assetOptions[0]} ${assetOptions[1]} ${assetOptions[2]}
done

############ CREATE A DEB CONTROL FILE ############

echo "Creating ${fullOutPath}/DEBIAN/control file ..."
cat > "${fullOutPath}/DEBIAN/control" <<- CONTROL
	Section: rust
	Priority: optional
	Version: $upstreamVersion
	Maintainer: $maintainer
	Package: $name
	Architecture: $arch
	Depends: $depends
	Description: $description
CONTROL

############ CREATE CHANGELOG AND COPYRIGHT FILES ############

echo "Creating changelog ..."
changelogPath="${fullOutPath}/usr/share/doc/${name}"
echo $changelogPath
mkdir -p "$changelogPath"
changelogPath="${changelogPath}/changelog.Debian"
cat > "$changelogPath" <<- CHANGELOG
	$name ($version) unreleased; urgency=low
		* ${changelog}
CHANGELOG
gzip --best "$changelogPath"
rm -f "$changelogPath"

############ BUILD A DEB PACKAGE ############
echo "Building deb package ..."
dpkg-deb --build "$fullOutPath" "${outPath}/debian/"
echo "Deb package created and saved in ${fullOutPath}.deb"
