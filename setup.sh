#!/bin/sh
cd /var/tmp
wget https://packages.paessler.com/keys/paessler.asc 
cp paessler.asc /usr/share/keyrings/paessler-archive-keyring.asc
wget https://packages.paessler.com/docs/apt-sources/trixie.sources 
cp trixie.sources /etc/apt/sources.list.d/paessler.sources
apt-get update
apt-get install prtgmpprobe
prtgmpprobe config wizard
