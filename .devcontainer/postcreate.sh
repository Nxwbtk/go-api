#! /bin/bash

PRE='export $(cat '
POST='/.env.local | xargs)'
CMD=$PRE$1$POST
echo $CMD >> ~/.bashrc

apt-get update && apt-get install -y --no-install-recommends postgresql-client
cd app && go mod download