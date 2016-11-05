#!/bin/bash

# Validate environment
if [[ -z ${URL} ]] ; then
    echo "Missing URL env var"
    exit 129
fi
if [[ -z ${OUTPUT} ]] ; then
    echo "Missing OUTPUT env var"
    exit 130
fi
if [[ -z ${INTERVAL} ]] ; then
    echo "Missing INTERVAL env var"
    exit 131
fi

# Main loop
while true ; do

    date
    curl ${URL} -o ${OUTPUT} --fail --silent --show-error
    sleep ${INTERVAL}

done
