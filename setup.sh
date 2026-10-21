#!/bin/sh
curl --fail --silent https://packages.paessler.com/keys/paessler.asc | sudo tee /usr/share/keyrings/paessler-archive-keyring.asc
curl --fail --silent https://packages.paessler.com/docs/apt-sources/$(source /etc/os-release && echo $VERSION_CODENAME).sources | sudo tee /etc/apt/sources.list.d/paessler.sources
sudo apt-get update
sudo apt-get install prtgmpprobe
