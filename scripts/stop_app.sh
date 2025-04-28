#!/bin/bash
# Stop the running app if exists

su - ec2-user <<'EOF'
pm2 describe index > /dev/null
if [ $? -eq 0 ]; then
  echo "Stopping existing PM2 process"
  pm2 stop index
  pm2 delete index
fi
EOF