#!/bin/bash

# Substitute environmental variables
envsubst < application.conf.template > /srv/gitpitch/conf/application.conf

# Start GitPitch server
cd /srv/gitpitch
bin/server -Dconfig.file=conf/application.conf

