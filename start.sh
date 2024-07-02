#!/bin/bash

. .env

# pull all related images from public predictive.llc AWS registry
docker pull ${ECR_REGISTRY}${PROJECT}/api:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/skin_irritation:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/acute_dermal_toxicity:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/local-frontend:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/acute_inhalation_toxicity:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/predmd/skin_sensitization:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/skin_sensitization:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/acute_oral_toxicity:${VERSION}
docker pull ${ECR_REGISTRY}${PROJECT}/stoptox/eye_irritation_and_corrosion:${VERSION}

#start compose stack
docker -c default compose up -d --remove-orphans

echo "Please navigate in your browser to: 'http://<this-machine-IP-address>:8088'
