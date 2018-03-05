This repository is used to modify the awx_task VM to include packages for Junos Automation for Juniper equipment
If you use Docker Compose, you can modify the docker-compose.yml file to your environment's needs and then issue
```
docker-compose up
```
Otherwise, you can substitute the default awx_task container image for this one and manually start it up.

Docker Hub URL
https://hub.docker.com/r/jalphonso/awx_task/
Pull from Docker Hub directly with 
```
docker pull jalphonso/awx_task
```

or build manually with
```
docker build -t jalphonso/awx_task .
```
