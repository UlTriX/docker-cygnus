#!/usr/bin/env bash
sudo docker build -t docker/cygnus .
sudo docker run -t -p 0.0.0.0:5050:5050 -i docker/cygnus /bin/bash