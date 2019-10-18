#! /bin/sh

# $1 - target environment
# $2 - target image
# $3 - version

set -e

ENV=$1
ansible-playbook -i ./env/$ENV/inventory  ./deploy/deploy-app.yml  



























