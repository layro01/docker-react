#!/bin/bash

# Note: The container must be running in order for this command to work.
docker attach $(docker container list --format='{{.ID}}' | head -1)