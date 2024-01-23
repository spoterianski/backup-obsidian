# backup-obsidian script

_see original https://github.com/luckman212/obsidian-backup/

_see related thread at https://forum.obsidian.md/t/backup-obsidian-for-beginners/12267/33_

## Summary

This script will backup your Obsidian vault to remote git repository. It will also backup your plugins and themes. 
Script execute next steps:
- add all changes to git
- commit changes
- push changes to remote repository


## How to Use

Edit backup-obsidian.sh and set the following variables:
- HOST - remote host
- PORT - remote port
- TIMEOUT - timeout for ssh connection
- OBSIDIAN_VAULT - path to your Obsidian vault

Authentification to remote host can be done by ssh key (it nessessary for automation) or by password (it can be used for manual backup).

### Manual backup

run backup-obsidian.sh

### Automation

edit `backup-obsidian.plist` and set path to backup-obsidian.sh

```shell
cp obsidian-backup.plist ~/Library/LaunchAgents
chmod 644 ~/Library/LaunchAgents/obsidian-backup.plist
launchctl load ~/Library/LaunchAgents/obsidian-backup.plist
```
