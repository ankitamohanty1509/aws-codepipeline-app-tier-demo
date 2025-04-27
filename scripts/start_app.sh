#!/bin/bash
cd /home/ec2-user/app-tier
pm2 start index.js
pm2 save