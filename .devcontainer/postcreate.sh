#! /bin/bash

apt-get update && apt-get install -y --no-install-recommends postgresql-client
cd app && go mod download