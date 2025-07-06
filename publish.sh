#!/bin/bash

hugo build
rsync -avz -e 'ssh -p 22793' public/ admin@gplssm.dynu.net:/mnt/raid\ storage/apps-data/gruenzschocher-website/applications-gruenzschocher-website-pvc-\*
