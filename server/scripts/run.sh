#!/bin/bash

if [ -z "$DYNAMO_HOME" ]; then
    docker run --rm --name extender -p 9000:9000 $DOCKER_ARGS extender/extender;
else
    docker run --rm --name extender -p 9000:9000 -v ${DYNAMO_HOME}:/dynamo_home -e DYNAMO_HOME=/dynamo_home $DOCKER_ARGS extender/extender;
fi
