```bash
$ ssh-keygen -t ed25519 -C "$(whoami)@$(uname -n)-$(date -I)"
$ ssh-copy-id -i ~/.ssh/id_ed25519 user@host
```
