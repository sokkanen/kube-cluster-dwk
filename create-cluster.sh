#!/bin/bash

k3d cluster create --port 8082:30080@agent:0 -p 8081:80@loadbalancer --agents 2