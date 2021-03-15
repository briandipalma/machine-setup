https://www.servethehome.com/proxmox-ve-6-initial-installation-checklist/

Test the postfix email SMTP server is correctly configured with:

```bash
echo 12345 | mail -s "This is a test" youremail@domain.com
```

Seems to just work with outlook.com, for Gmail:

https://forum.proxmox.com/threads/get-postfix-to-send-notifications-email-externally.59940/
