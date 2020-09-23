#!/bin/bash
# Purpose - add user creation policies to puppet-server
# Author - Alex G <github.com/werstatyw> under GPL v2.0+
# ------------------------------------------------------------------
#add site.pp
docker cp site.pp puppet:/etc/puppetlabs/code/environments/production/manifests/

#add init.pp
docker cp init.pp puppet:/etc/puppetlabs/code/modules/user/manifests/
