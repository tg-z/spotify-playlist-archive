#!/usr/bin/env just --justfile

set shell := ["zsh", "-cu"]

# just
default:
    @just -u --list

# just setup
setup:
    @python3.9 -m pip install -r requirements.txt
    @python3.9 -m pip install --upgrade pip

# just update
update:
    @python3.9 src/main.py -u

# just push
push:
     @python3.9 src/main.py --prod

# just help
help:
    @python3.9 src/main.py -h

