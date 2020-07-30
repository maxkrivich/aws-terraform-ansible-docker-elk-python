# Python + Filebeat host

```bash
$ ELK_VERSION=7.8.0 LS_HOST=<logstash_ip>:5044 docker-compose up --build
```

## endpoints
```bash
$ curl -X POST '127.0.0.1:5000/echo' -H 'Content-Type: application/json' -d '{"test": "123"}'
$ curl -X GET '127.0.0.1:5000/ping'
```

# Links
* https://www.elastic.co/guide/en/beats/filebeat/current/index.html
* https://sanic.readthedocs.io/en/latest/
* https://pipenv.pypa.io/en/latest/
* https://www.uvicorn.org/
* https://docs.docker.com/compose/compose-file/

