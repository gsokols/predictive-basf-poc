#!/bin/bash

docker -c default compose down
docker -c default rmi $(docker -c default images --filter "dangling=true" -q --no-trunc) > /dev/null 2>&1 || echo "[info] no dangling images to remove"
