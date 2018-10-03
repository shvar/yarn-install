#!/bin/sh
mkdir -p ../assets
mkdir -p ../@assets

echo someText > ../assets/text.txt
echo someText > ../@assets/text.txt

ln -s ../../assets node_modules/
ln -s ../../@assets node_modules/

