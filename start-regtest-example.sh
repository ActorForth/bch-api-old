#!/bin/bash

# Full node
export NETWORK=regtest
# Docker containers for the below infrastructure is described here:
# https://psfoundation.cash/blog/cash-stack
# Pre-synced databases can be downloaded on the CashStrap page:
# https://fullstack.cash/cashstrap

# Which network are you using?
export NETWORK=regtest
#export NETWORK=testnet

# Full node
# export RPC_IP=<ip>:8332
export RPC_BASEURL=http://localhost:18443/
export RPC_USERNAME=regtest
export RPC_PASSWORD=regtest

# SLPDB
export SLPDB_PASS_GP=somelongpassword
export SLPDB_URL=http://localhost:12300/
# Use the same address as SLPDB_URL if you don't have a separate whitelist server.
export SLPDB_PASS_WL=somelongpassword
# export SLPDB_WHITELIST_URL=http://<SLPDB IP>:12300/
# slp-api alternative SLP validator using slp-validate:
# https://github.com/Permissionless-Software-Foundation/slp-api
export SLP_API_URL=http://10.0.0.5:5001/

# Mainnet Fulcrum / ElectrumX
export FULCRUM_URL=localhost
export FULCRUM_PORT=50002

export SECURITY=false
### require if SECURITY=true ###


# JWT Token Secret
# This is used to verify JWT tokens generated with jwt-bch-api:
# https://github.com/Permissionless-Software-Foundation/jwt-bch-api
export TOKENSECRET=somelongpassword
# Redis DB - Used for rate limiting - customize to your own Redis installation.
export REDIS_HOST=6379
export REDIS_PORT=127.0.0.1
##################################

# So that bch-api can call bch-js locally.
export LOCAL_RESTURL=http://127.0.0.1:3000/v4/

# Basic Authentication password
export PRO_PASS=somerandomepassword:someotherrandompassword:aThirdPassword

# Whitelisted domains. Automatically give pro-tier rate limit access to apps
# that originate froma domain on the whitelist.
export WHITELIST_DOMAINS=fullstack.cash,psfoundation.cash,torlist.cash

# Rate Limits. Numbers are divided into 1000. e.g. 1000 / 50 = 20 RPM for ANON.
# Requests use the ANON rate limit if they fail to pass in a JWT token.
# ANON = 20 requests per minute (RPM)
export ANON_RATE_LIMIT=50
# 10 = 100 RPM
export WHITELIST_RATE_LIMIT=10

# Set logging parameters
#1m means no more than 1 megabyte
export LOG_MAX_SIZE=1m
#5d means store no more than 5 days
export LOG_MAX_FILES=5d

# npm start