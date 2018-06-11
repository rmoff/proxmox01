#!/bin/sh

curl -X "POST" "http://proxmox01.moffatt.me:8083/connectors/" \
                   -H "Content-Type: application/json" \
    -d '{
  "name": "mongodb-connector",
  "config": {
    "connector.class": "io.debezium.connector.mongodb.MongoDbConnector",
    "mongodb.hosts": "rs0/mongodb:27017",
    "mongodb.name": "ubnt",
    "database.whitelist": "ace"
  }
}'
