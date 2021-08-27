#/data/data/com.termux/files/usr/bin/bash
DISTRO_NAME="Ubuntu Base 21.04"
arch=$(dpkg --print-architecture)
TARBALL_URL['$arch']="http://cdimage.ubuntu.com/ubuntu-base/releases/21.04/release/ubuntu-base-21.04-base-$arch.tar.gz"
TARBALL_SHA256['$arch']="2FF4BCCE53DA9BC231348BB8B0B7490EB994BC5C7407555D27E5D318DEAEB92C"

# Tarball SHA-256 is for amd64 version.

# SHA-256 for the armhf version is 32F4BE0A13FEB17EBB9D27DA79900BBDDE98D9322538ADE8208C3E23879A950F
