#!/bin/sh

BLACKLIST_FILE=/etc/dnscrypt-proxy/blacklist.txt
BLACKLIST_SCRIPTS=/etc/dnscrypt-proxy/repository/utils/generate-domains-blacklists/

if [ "$ANSIBLE_CHECK_INITIAL" = 1 ] && [ `wc -l < $BLACKLIST_FILE` -gt 1000 ]
then
    echo "Blacklist is already generated, skipping for initial deployment."
    exit 1
fi

if [ "$CRON_REGEN" = 1 ] && [ -z `find "$BLACKLIST_FILE" -mtime +1` ]; then
    echo "Blacklist is generated less than a day ago, skipping for cron."
    exit 1
fi

cd "$BLACKLIST_SCRIPTS"
./generate-domains-blacklist.py > "$BLACKLIST_FILE"
