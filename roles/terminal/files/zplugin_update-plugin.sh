#!/bin/zsh

if ! conncheck; then
    exit 1
fi

source /usr/share/zsh/plugin-managers/zplugin/zplugin.zsh
zplugin update --all
