#!/bin/sh

exec xautolock -detectsleep \
    -time 15 -locker '/usr/local/bin/lock' \
    -notify 30 \
    -notifier "notify-send -u critical -t 10000 -a Lock 'LOCKING screen in 30 seconds'"
