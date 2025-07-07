#!/bin/bash

hugo build --cleanDestinationDir
rsync -avz --delete public/ ssh300008666@ngcobalt394.manitu.net:/home/sites/site100019389/web/gruenzschocher.de
