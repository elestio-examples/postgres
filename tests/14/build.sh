#!/usr/bin/env bash
cp -r ./14/bookworm/* ./
docker buildx build . --output type=docker,name=elestio4test/postgres:14 | docker load