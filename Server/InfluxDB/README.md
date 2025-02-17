## Install Influx DB
Use the docker-compose file to start the Influx DB Container. Set the evironment variables in the compose file, before starting it.
```sh
docker-compose -f docker-compose.yaml up -d
```
Once the containers are up and running, goto http://eagle1.mr.med.ge.com:8086 to check for Influx DB

<img src="doc/InfluxDB-Login.PNG">
