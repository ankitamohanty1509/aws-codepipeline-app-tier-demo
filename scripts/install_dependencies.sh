#!/bin/bash

su - ec2-user <<'EOF'
cd ~/app-tier
npm install
EOF
