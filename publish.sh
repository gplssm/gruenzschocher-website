#!/bin/bash

hugo
rsync -avz public/ admin@192.168.178.23:/mnt/raid\ storage/apps-data/gruenzschocher-website/applications-gruenzschocher-website-pvc-\*
