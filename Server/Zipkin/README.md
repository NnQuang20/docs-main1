## Install Zipkin

This Zipkin srtup is configured to store the traces on Elasticsearch. So, before Zipkin is started, an index template for zipkin-spans must be created on Elasticsearh. Use the following CURL to create an index for Zipkin on Elasticsearch.

```sh
curl -u elastic:admin123 -X PUT "13.124.176.61:9200/_index_template/zipkin-span_template?pretty" -H 'Content-Type: application/json' -d'
{
  "index_patterns": [
    "zipkin-span-*"
  ],
  "template": {
    "mappings": {
      "_doc": {
        "_routing": {
          "required": false
        },
        "numeric_detection": false,
        "dynamic_date_formats": [
          "strict_date_optional_time",
          "yyyy/MM/dd HH:mm:ss Z||yyyy/MM/dd Z"
        ],
        "_source": {
          "excludes": [
            "_q"
          ],
          "includes": [],
          "enabled": true
        },
        "dynamic": true,
        "dynamic_templates": [
          {
            "strings": {
              "mapping": {
                "norms": false,
                "ignore_above": 256,
                "type": "keyword"
              },
              "match_mapping_type": "string",
              "match": "*"
            }
          }
        ],
        "date_detection": true,
        "properties": {
          "duration": {
            "type": "long"
          },
          "traceId": {
            "norms": false,
            "type": "keyword"
          },
          "remoteEndpoint": {
            "dynamic": false,
            "type": "object",
            "properties": {
              "serviceName": {
                "norms": false,
                "type": "keyword"
              }
            }
          },
          "_q": {
            "norms": false,
            "type": "keyword"
          },
          "localEndpoint": {
            "dynamic": false,
            "type": "object",
            "properties": {
              "serviceName": {
                "norms": false,
                "type": "keyword"
              }
            }
          },
          "timestamp_millis": {
            "format": "epoch_millis",
            "type": "date"
          },
          "name": {
            "norms": false,
            "type": "keyword"
          },
          "annotations": {
            "enabled": false
          },
          "tags": {
            "enabled": true
          }
        }
      }
    }
  }
}
'
```
Once the template is successfully created, use the docker-compose file to start the Zipkin Container. Set the evironment variables in the compose file, before starting it.
```sh
docker-compose -f docker-compose.yaml up -d
```
Once the containers are up and running, goto http://eagle1.mr.med.ge.com:9411 to check for Zipkin

<img src="doc/Zipkin.PNG">
