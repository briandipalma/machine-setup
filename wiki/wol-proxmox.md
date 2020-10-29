For some reason standard WOL Debian setup doesn't work in Proxmox.
So to enable WOL on startup you need to create a systemd service
that sets WOL to enabled.

Steps:

https://opensource.com/article/20/5/manage-startup-systemd

Script:

```bash
#!/usr/bin/bash
echo "****************************"
echo "******* Enabling WOL *******"

ethtool -s enp4s0 wol g
```
