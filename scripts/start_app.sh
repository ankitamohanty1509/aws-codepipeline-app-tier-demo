#!/bin/bash

cd ~/app-tier
pm2 start index.js
pm2 save
pm2 startup systemd -u ec2-user --hp /home/ec2-user
