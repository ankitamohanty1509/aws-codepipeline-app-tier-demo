#!/bin/bash

pm2 describe index > /dev/null
if [ $? -eq 0 ]; then
  echo "Stopping existing PM2 process"
  pm2 stop index
  pm2 delete index
else
  echo "No PM2 process found. Continuing..."
fi
