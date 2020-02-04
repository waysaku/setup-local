#!/bin/bash
if [ "$(uname)" == 'Darwin' ]; then
  source setups/setup-mac.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  ISSUE=`expr substr "$(head -n 1 /etc/issue)" 1 6`
  if [ -e /etc/lsb-release ] || [ $ISSUE == 'Debian' ]; then
    source setups/setup-ubuntu.sh
  else
    echo "Your Linux distribution is not supported."
    exit 1
  fi
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

