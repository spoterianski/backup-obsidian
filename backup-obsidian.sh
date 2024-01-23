#!/bin/zsh

HOST="protos.local"
PORT="22"
TIMEOUT="10"
OBSIDIAN_VAULT="~/Documents/Obsidian"

if ssh -o ConnectTimeout=$TIMEOUT -p $PORT "$HOST" echo "SSH is up"; then
    echo "Host $HOST is available"
else
    echo "Host $HOST is not available. Exiting..."
    exit 0
fi

CURRENT_DIR=$(pwd)

# Sync Obsidian vault
echo "Syncing Obsidian vault..."
cd $OBSIDIAN_VAULT
git add -A
git commit -m "Backup $(date)"
git push origin master
echo "Obsidian vault synced"

cd $CURRENT_DIR
