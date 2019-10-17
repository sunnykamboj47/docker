#! /bin/sh

# $1 - target environment
# $2 - target image
# $3 - version

set -e

ENV=$1
IMG=$2
 

echo "Deploy app..."
sshpass -p $PASSWORD ansible-playbook -i ./env/$ENV/inventory --ask-pass ./deploy/deploy-app.yml  

echo "Deploy volume..."
sshpass -p $PASSWORD ansible-playbook -i ./env/$ENV/inventory --ask-pass ./deploy/deploy-volume.yml  


























