#!/bin/bash

docker run -p 8080:80 $(docker images --format='{{.ID}}' | head -1)