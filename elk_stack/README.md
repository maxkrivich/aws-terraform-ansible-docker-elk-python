# ELK stack host

```bash
$ ELK_VERSION=7.8.0 docker-compose up --build -d
```


## Environment info
|Service | URL address |
|------- |-------------| 
|Elasticsearch | http://127.0.0.1:9200|
|Elasticsearch | http://127.0.0.1:9300|
|Logstash | http://127.0.0.1:5044|
|Logstash | http://127.0.0.1:9600|
|Kibana | http://127.0.0.1:5601|

## Credentials
```bash
USERNAME: elastic
PASSWORD: admin
```

# Links
* https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html
* https://www.elastic.co/guide/en/kibana/current/index.html
* https://www.elastic.co/guide/en/logstash/current/index.html
* https://www.elastic.co/guide/en/beats/libbeat/current/index.html
* https://www.elastic.co/guide/en/beats/filebeat/current/index.html
* https://www.elastic.co/guide/en/beats/metricbeat/current/index.html
* https://docs.docker.com/compose/compose-file/