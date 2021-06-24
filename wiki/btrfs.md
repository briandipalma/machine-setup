# Mounting a Btrfs Filesystem at Boot Time

First, find the UUID of the Btrfs filesystem:

```bash
$ sudo btrfs filesystem show
```

```bash
Label: none  uuid: c39e53d0-7a42-43c9-bd78-0d07f3d82c9d
        Total devices 2 FS bytes used 1.79TiB
        devid    1 size 10.91TiB used 1.88TiB path /dev/sdb
        devid    2 size 10.91TiB used 1.88TiB path /dev/sda
```

Or with:

```bash
ls -l /dev/disk/by-uuid/
```

```bash
...
lrwxrwxrwx 1 root root  9 Jun 24 12:15 c39e53d0-7a42-43c9-bd78-0d07f3d82c9d -> ../../sdb
...
```

At the end of the `/etc/fstab` file, type in the following line:

```
UUID=c39e53d0-7a42-43c9-bd78-0d07f3d82c9d /mnt/storage btrfs defaults 0 0
```

To reload an entry with systemd to mount a local filesystem you should use:

```bash
$ sudo systemctl daemon-reload
$ sudo systemctl restart local-fs.target
```

## Other

Turn off COW for certain directories (and subdirectories)

`sudo chattr -R +C /srv/storage/downloads`
