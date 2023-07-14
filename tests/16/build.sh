#!/usr/bin/env bash
cp -r ./16/bookworm/* ./
docker buildx build . --output type=docker,name=elestio4test/postgres:16 | docker load