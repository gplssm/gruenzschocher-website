#!/bin/bash

hugo build --cleanDestinationDir
rsync -avz --delete public/ ${SSH_USER}@${WEB_SERVER}:${WWW_PATH}
