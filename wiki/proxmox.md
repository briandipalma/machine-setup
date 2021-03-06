# Setup/Installation steps

For automation install sudo:

`su`
`apt-get install sudo -y`
`usermod -aG sudo yourusername`

https://www.servethehome.com/proxmox-ve-6-initial-installation-checklist/

(Change update servers)

https://www.youtube.com/watch?app=desktop&v=GoZaMgEgrHw& - Before I do anything on Proxmox, I do this first...

(Enable IOMMU, in BIOS and OS, setup SMB share, setup backup job)

Remove no subscription notification:

https://johnscs.com/remove-proxmox51-subscription-notice/

In `/usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js`

## Email notificatiions

Test the postfix email SMTP server is correctly configured with:

```bash
echo 12345 | mail -s "This is a test" youremail@domain.com
```

Seems to just work with outlook.com, for Gmail:

https://forum.proxmox.com/threads/get-postfix-to-send-notifications-email-externally.59940/

## WoL

https://pve.proxmox.com/wiki/Proxmox_Node_Management 

```bash
auto lo
iface lo inet loopback

iface enp4s0 inet manual
	ethernet-wol g
	post-up /usr/sbin/ethtool -s $IFACE wol g
	post-down /usr/sbin/ethtool -s $IFACE wol g

auto vmbr0
iface vmbr0 inet dhcp # Should probably be static
	bridge_ports enp4s0
	bridge_stp off
	bridge_fd 0
```

## S.M.A.R.T

Verify S.M.A.R.T disk monitoring is enabled:

https://pve.proxmox.com/wiki/Disk_Health_Monitoring

## Terraform

Run

```
pveam update
```
