#!/bin/bash

echo "Installing dependencies..." &&
pip install --force-reinstall --upgrade --user \
  pyyaml==5.3 \
  azure==4.0.0 \
  azure-cli-core==2.2.0 \
  msrestazure==0.6.2 \
  > /dev/null 2>&1 &&
echo "Finished installing dependencies." &&
echo "Getting account setup script..." &&
wget -q https://raw.githubusercontent.com/Azure/doAzureParallel/master/account_setup.py -O account_setup.py &&
chmod 755 account_setup.py &&
echo "Finished getting account setup script." &&
echo "Running account setup script..." &&
python3 account_setup.py $1
