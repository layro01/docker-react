#!/bin/bash

# Note: The container must be running in order for this command to work.
docker exec -it $(docker container list --format='{{.ID}}' | head -1) npm run test