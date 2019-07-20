#!/bin/bash
if [ "$(uname)" == 'Darwin' ]; then
  source setups/setup-mac.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  if [ -e /etc/lsb-release ]; then
    source setups/setup-ubuntu.sh
  fi
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

