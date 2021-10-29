#!/bin/bash

docker run -it $(docker images --format='{{.ID}}' | head -1) npm run test