```bash
$ ssh-keygen -t ed25519 -C "$(whoami)@$(uname -n)-$(date -I)"
$ ssh-copy-id -i id_ed25519 user@host
```
