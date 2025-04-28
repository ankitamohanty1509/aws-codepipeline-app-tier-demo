#!/bin/bash

su - ec2-user <<'EOF'
cd ~/app-tier
pm2 start index.js
pm2 save
EOF
