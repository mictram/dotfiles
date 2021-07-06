#!/bin/sh

# autostart script for qtile

cmd_exist() { unalias "$1" >/dev/null 2>&1 ; command -v "$1" >/dev/null 2>&1 ;}

__kill() { kill -9 "$(pidof "$1")" >/dev/null 2>&1 ; }

__start() { sleep 1 && "$@" >/dev/null 2>&1 & }

__running() { pidof "$1" >/dev/null 2>&1 ;}

start_app() {
    if cmd_exist $1 ; then
        __kill $1
        __start $1
    fi
}

start_app "picom"
start_app "brave"
start_app "alacritty"
start_app "discord"
start_app "signal-desktop"
start_app "nextcloud"
start_app "yubioath-desktop"
start_app "pavucontrol"
start_app "virt-manager"
start_app "gwe"
start_app "strawberry"
start_app "steam"
start_app "lutris"
