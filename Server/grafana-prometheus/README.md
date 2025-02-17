### Install Grafana and Prometheus
Use the docker-compose file to start the Grafana and Prometheus Containers
```sh
docker-compose -f docker-compose.yaml up -d
```
Once the containers are up and running, goto http://eagle1.mr.med.ge.com/grafana to check for Grafana

<img src="doc/Grafana-Login.PNG">

Goto http://eagle1.mr.med.ge.com:9090 to check for Prometheus

<img src="doc/Prometheus.PNG">
