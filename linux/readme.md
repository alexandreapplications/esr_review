# FHS: Filesystem Hiearchy Standard

* bin => Binary 
  - ls, cat, ...
* sbin => System Binary
  - Single user mode, system user
* boot => Everything needes to boot the OS
* cdrom => Is only a legancy for CD Rom
* dev => Devices folder
  Here we find the defices
  - disk -> dev/sda or sdi1 
* etc => Etcetera
  All configurations are setted. Systemwide.
  - /etc/apt/ you can find source.list where all the sources are found
* lib, lib32, lib64 => Where the libraries are found
  Files applications need.
* media, mnt
  Moutend files to find the storage
  midia is automatic
  mnt for manual
* opt => Optional folder
  - Software mounted manually
* proc
  - Where to find sudo files.
  - Find the id on the system manager and verify by number in proc.
  - Information appearing as files
  - cat /proc/cpuinfo
  - cat /proc/uptime
* root => root for the users
* run => temp fs file system, runs in the RAM
* snap => used by ubuntu, application run as unique file
* srv => Where service data is storage
  - Runing a ftp or web server store files external users are going to have access
* sys => System folder i
  Interacts with kernel
* tmp => Temporary folder
* usr => User application installation for applications used by the user
* var => Variable directory, files expect to grow in size.
  - The logs resides here along another files
* home => Where store personal files and documents
  One folder for each user.
  - .config => individual application configuration
  - .local => individual application configuration
  