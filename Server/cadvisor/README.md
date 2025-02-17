### Install cadvisor
Use the docker-compose file to start the Grafana and Prometheus Containers
```sh
docker-compose -f docker-compose.yaml up -d
```
As all the monitoring tools are deployed in docker environment, cadvisor is used to get the CPU, RAM and network metrics of all the containers running in the main server machine
