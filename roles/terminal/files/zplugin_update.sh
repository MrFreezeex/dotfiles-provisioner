#!/bin/zsh

if ! conncheck; then
    exit 1
fi

cd /usr/share/zsh/plugin-managers/zplugin
git pull

source zplugin.zsh
zplugin self-update
