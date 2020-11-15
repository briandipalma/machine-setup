Get UUID from `ll /dev/disk/by-uuid/`

Then add to `/etc/fstab`

UUID=c39e53d0-7a42-43c9-bd78-0d07f3d82c9d /srv/storage btrfs defaults 0 0

Turn off COW for certain directories (and subdirectories)

`sudo chattr -R +C /srv/storage/downloads`
