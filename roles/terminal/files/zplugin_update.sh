#!/bin/zsh

cd /usr/share/zsh/plugin-managers/zplugin
git pull

source zplugin.zsh
zplugin self-update
