#!/bin/bash

docker run -it -p 3000:3000 -v /home/node/app/node_modules -v ~/frontend:/home/node/app $(docker images --format='{{.ID}}' | head -1)