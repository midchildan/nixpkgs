#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nodePackages.node2nix wget

wget -O package.json https://raw.githubusercontent.com/Chinachu/Chinachu/gamma/package.json
sed -i '/file:common/d' package.json

node2nix -8 \
  --input package.json \
  --supplement-input supplement.json \
  --node-env ../../../development/node-packages/node-env.nix \
  --composition composition.nix
