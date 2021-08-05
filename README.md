A Bash script for managing chroot'ed Linux distributions in Linux desktops and servers.

Forked form termux/proot-distro

A modified version of termux/proot-distro to make it avaible on linux desktops and PCs.

It's named proot-distro, but his engine is chroot.

Example on how to install Ubuntu and launch shell:
```
proot-distro install ubuntu-20.04
proot-distro login ubuntu-20.04
```

You may create a distribution installation with custom name:
```
proot-distro install --override-alias ubuntu-testing ubuntu-20.04
proot-distro login ubuntu-testing
```
This will allow to have multiple installations of same distribution.

## Fixing dpkg errors

1. udisks2
   ```
   dpkg: error processing package udisks2 (--configure):
    installed udisks2 package post-installation script subprocess returned error exit status 1
   ```
   Solution:
   ```
   rm /var/lib/dpkg/info/udisks2.postinst
   dpkg --configure -a
   ```
2. libfprint-2-2
   ```
   dpkg: error processing package libfprint-2-2:arm64 (--configure):
    installed libfprint-2-2:arm64 package post-installation script subprocess returned error exit status 1
   ```
   Solution:
   ```
   rm /var/lib/dpkg/info/libfprint0:*.postinst
   dpkg --configure -a
   ```
3. fprintd
   ```
   rm /var/lib/dpkg/info/fprintd.postinst
   dpkg --configure -a
   ```
