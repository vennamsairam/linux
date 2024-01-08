## add disk in virtual disk
```
root@orac002 ~ # lsblk
NAME            MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda               8:0    0    8G  0 disk
├─sda1            8:1    0    1G  0 part /boot
└─sda2            8:2    0    7G  0 part
  ├─centos-root 253:0    0  6.2G  0 lvm  /
  └─centos-swap 253:1    0  820M  0 lvm  [SWAP]
sdb               8:16   0  100G  0 disk
sr0              11:0    1 1024M  0 rom
root@orac002 ~ #  fdisk /dev/sdb
Welcome to fdisk (util-linux 2.23.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table
Building a new DOS disklabel with disk identifier 0xcebac761.

Command (m for help): n
Partition type:
   p   primary (0 primary, 0 extended, 4 free)
   e   extended
Select (default p):
Using default response p
Partition number (1-4, default 1):
First sector (2048-209715199, default 2048):
Using default value 2048
Last sector, +sectors or +size{K,M,G} (2048-209715199, default 209715199):
Using default value 209715199
Partition 1 of type Linux and of size 100 GiB is set

Command (m for help): w
The partition table has been altered!

Calling ioctl() to re-read partition table.
Syncing disks.
root@orac002 ~ # lsblk
NAME            MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda               8:0    0    8G  0 disk
├─sda1            8:1    0    1G  0 part /boot
└─sda2            8:2    0    7G  0 part
  ├─centos-root 253:0    0  6.2G  0 lvm  /
  └─centos-swap 253:1    0  820M  0 lvm  [SWAP]
sdb               8:16   0  100G  0 disk
└─sdb1            8:17   0  100G  0 part
sr0              11:0    1 1024M  0 rom
root@orac002 ~ # pvcreate /dev/sdb1
  Physical volume "/dev/sdb1" successfully created.
root@orac002 ~ # vgs
  VG     #PV #LV #SN Attr   VSize  VFree
  centos   1   2   0 wz--n- <7.00g    0
root@orac002 ~ # vgextend centos /dev/sdb1
  Volume group "centos" successfully extended
root@orac002 ~ # vgs
  VG     #PV #LV #SN Attr   VSize   VFree
  centos   2   2   0 wz--n- 106.99g <100.00g
root@orac002 ~ # lvs
  LV   VG     Attr       LSize   Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  root centos -wi-ao----  <6.20g
  swap centos -wi-ao---- 820.00m
root@orac002 ~ # lvdisplay
  --- Logical volume ---
  LV Path                /dev/centos/swap
  LV Name                swap
  VG Name                centos
  LV UUID                l8PMCu-cj1T-23BP-wlCO-OaIl-iQW7-PYR3hn
  LV Write Access        read/write
  LV Creation host, time localhost, 2023-11-26 07:01:02 -0500
  LV Status              available
  # open                 2
  LV Size                820.00 MiB
  Current LE             205
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:1

  --- Logical volume ---
  LV Path                /dev/centos/root
  LV Name                root
  VG Name                centos
  LV UUID                gCVVrZ-TgAJ-ueAA-51Ep-lEZa-Eow3-Ez4x33
  LV Write Access        read/write
  LV Creation host, time localhost, 2023-11-26 07:01:02 -0500
  LV Status              available
  # open                 1
  LV Size                <6.20 GiB
  Current LE             1586
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:0

root@orac002 ~ # lvextend -l +100%FREE /dev/centos/root
  Size of logical volume centos/root changed from <6.20 GiB (1586 extents) to 106.19 GiB (27185 extents).
  Logical volume centos/root successfully resized.
root@orac002 ~ # resize2fs /dev/centos/root
resize2fs 1.42.9 (28-Dec-2013)
resize2fs: Bad magic number in super-block while trying to open /dev/centos/root
Couldn't find valid filesystem superblock.
root@orac002 ~ # xfs_growfs /dev/centos/root
meta-data=/dev/mapper/centos-root isize=512    agcount=4, agsize=406016 blks
         =                       sectsz=512   attr=2, projid32bit=1
         =                       crc=1        finobt=0 spinodes=0
data     =                       bsize=4096   blocks=1624064, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0 ftype=1
log      =internal               bsize=4096   blocks=2560, version=2
         =                       sectsz=512   sunit=0 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
data blocks changed from 1624064 to 27837440
root@orac002 ~ # df -h
Filesystem               Size  Used Avail Use% Mounted on
devtmpfs                 1.9G     0  1.9G   0% /dev
tmpfs                    1.9G     0  1.9G   0% /dev/shm
tmpfs                    1.9G  8.6M  1.9G   1% /run
tmpfs                    1.9G     0  1.9G   0% /sys/fs/cgroup
/dev/mapper/centos-root  107G  3.5G  103G   4% /
/dev/sda1               1014M  195M  820M  20% /boot
tmpfs                    379M     0  379M   0% /run/user/0
root@orac002 ~ #

```
