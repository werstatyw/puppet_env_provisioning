#!/bin/bash
# Purpose - create an environment for Puppet user distribution
# Author - Alexander Grigoryev <www.github.com/werstatyw> under GPL v2.0+
# ------------------------------------------------------------------
#create net for puppet network
docker network create puppet
#create puppet-server in detached mode (in background)
docker run -d --net puppet --name puppet  --hostname puppet.srv1 puppet/puppetserver
#create 2 agents for puppet server 
#flags-explanation: If the container won't exit, It stays online and updates Puppet every 30 minutes based on the latest content from the Puppet Server.
docker run -d --net puppet --name puppet-client1 --hostname puppet-clt1 puppet/puppet-agent-ubuntu agent --verbose --no-daemonize --summarize
docker run -d --net puppet --name puppet-client2 --hostname puppet-clt2 puppet/puppet-agent-ubuntu agent --verbose --no-daemonize --summarize

