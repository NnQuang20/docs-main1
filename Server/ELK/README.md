### Install Elasticsearch and Kibana (7.17.18) using Docker
Follow these steps to install and run Elasticsearch and Kibana version 7.17.18
## Install Elasticsearch
```sh
docker run --name es01 --net elastic -p 9200:9200 -d --restart unless-stopped -e "discovery.type=single-node" -v </PATH/to/configuration/files>:/usr/share/elasticsearch/config -v </PATH/to/data/files>:/usr/share/elasticsearch/data elasticsearch:7.17.18
```

Once the docker container is up and running, use the following CURL to check if Elasticsearch is operational.

```sh
curl -X GET "http://<[IPADDR]:9200/_cat/nodes?v=true&pretty"
# Example output
ip         heap.percent ram.percent cpu load_1m load_5m load_15m node.role   master name
172.19.0.2           48          95   5    1.99    1.91     1.71 cdfhilmrstw *      2365dcb661c9
```
## Install Kibana
```sh
docker run --name kibana --net elastic -p 5601:5601 -d -e "ELASTICSEARCH_HOSTS=http://es01:9200" -v </PATH/to/configuration/files>:/usr/share/kibana/config -v </PATH/to/data/files>:/usr/share/kibana/data kibana:7.17.18
```

Once the docker container is up and running, go to http://eagle1.mr.med.ge.com:5602/ to check if Kibana is running. The link should open a webpage for Kinbana

<img src="doc/Kibana-Login.PNG">
