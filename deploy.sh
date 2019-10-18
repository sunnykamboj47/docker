#! /bin/sh

# $1 - target environment
# $2 - target image
# $3 - version

set -e

ENV=$1
ansible-playbook -i ./$ENV/$IMG/env/dev/inventory  ./deploy/deploy-app.yml  



























