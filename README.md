This is the description for the puppet environment creation using Docker and single VM from Vultr. Then configure 

1. Create a Docker-ready Virtual Machine from Vultr.com. Optimal parameters are: 4Gb of ram.
2. ssh to the server as a root and create user with "useradd <username>, then execute add-user-to-groups.sh it will automatically add the new user to a group "docker" which helps us to create and run containers. Add it as executable in the system by command: chmod +x add-user-to-groups.sh
3. execute create-docker-puppet-infrastructure.sh and check if the agents is working by executing:
docker exec -it puppet-client1 bash
ans then run puppet agent --test
4. take init.pp and site.pp and put it in user's home. Create folder structure on server with policy. by docker exec -it puppet-client1 bash and mkdir inside modules: user and then manifests. Then run docker-put-puppet-policy.sh 
5. check that the user was created by applying puppet agent --test and see if there's a note Notice: /Stage[main]/User/User[trial]/ensure: created
Also check the agent(s) home folder for trial creation by:
"docker exec -it puppet-client1 bash"
and then "ls /home/ "
