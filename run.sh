#!/bin/bash

chmod +x hello-server.go

ls -la
pwd

helloServer &

sleep 5

for LOGIN in Homer Bart Maggie; do
    echo "$(date): $(curl -s http://localhost:13000/${LOGIN})"
done