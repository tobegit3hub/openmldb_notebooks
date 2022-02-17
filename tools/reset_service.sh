#!/bin/bash

set -x

docker stop openmldb_notebooks
docker rm openmldb_notebooks

sleep 1

docker run -d --net=host --name openmldb_notebooks tobegit3hub/openmldb_notebooks
