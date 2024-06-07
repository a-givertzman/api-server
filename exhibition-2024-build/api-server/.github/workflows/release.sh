sed -i -r "s/^(version[\t ]*=[\t ]*\"[0-9]+\.[0-9]+\.)[0-9]+\"\s*$/\1889\"/g" ./Cargo.toml

new_version_var=$(cat ./Cargo.toml | sed -rn 's/^version[\t ]*=[\t ]*\"([0-9]+\.[0-9]+\.[0-9]+)\"\s*$/\1/gp')
echo "new version: $new_version_var"
