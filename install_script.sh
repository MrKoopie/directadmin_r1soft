#!/bin/bash
cd /usr/local/directadmin/plugins
wget https://github.com/MrKoopie/directadmin_r1soft/archive/master.zip -O r1soft.zip
unzip r1soft.zip
mv directadmin_r1soft-master r1soft
cd r1soft
cp config.sample.php config.php

# Configure the serverurl
"${EDITOR:-vi}" config.php
chown diradmin: ../r1soft -R