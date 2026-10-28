#!/bin/bash
docker compose build
docker compose up -d

RETRIES=15
until curl -sf http://localhost:8000/healthz > /dev/null; do
    sleep 2
    let RETRIES-=1
    if [ "$RETRIES" -le 0 ]; then
        exit 1
    fi
done

exit 0
