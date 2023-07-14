#!/usr/bin/env bash
cp -r 15/bookworm/* ./
docker buildx build . --output type=docker,name=elestio4test/postgres:15 | docker load