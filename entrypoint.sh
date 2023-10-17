#!/bin/sh
eval $(ssh-agent)
sb ssh
exec mina "$@"
