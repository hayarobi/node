#!/bin/sh

if [ $# -gt 1 ]; then
	echo "usage: run.sh [network]"
	exit 100
fi

if [ "$1" = "mainent" or "$1" = "" ]; then
  CONFIG_FILE = "docker-compose.yml"
elif [ "$1" = "sepolia" ]; then
  CONFIG_FILE = "docker-compose.sepolia.yml"
else
  echo "invalid network name $1"
  exit 102
fi

docker compose -f $CONFIG_FILE up -d
