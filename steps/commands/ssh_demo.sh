#! /bin/sh

ssh patrick@127.0.0.1 -v

## ssh configuration
## /etc/ssh/sshd_config

## ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host

## cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

## ssh agent
# ssh-agent $SHELL,ssh-add,ssh-copy-id -i remote-host

# ~/.ssh/config
# TCPKeepAlive=yes
# ServerAliveInterval=15
# Compression=yes
# ControlMaster auto
# ControlPersist yes