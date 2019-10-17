#! /bin/sh


# $1 - target environment
# $2 - target container
# $3 - number of instances

set -e

ENV=$1
IMG=$2
SCALE=$3

echo "Scaling..."
sshpass -p $PASSWORD ansible-playbook -i ./env/$ENV/inventory --ask-pass ./deploy/scale-app.yml --extra-vars "IMG=$IMG SCALE=$SCALE"

