#!/bin/bash

. .env

#stop compose stack
docker -c default compose down

# remove all local images of predictive.llc application
docker rmi ${ECR_REGISTRY}${PROJECT}/api:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/skin_irritation:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/acute_dermal_toxicity:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/local-frontend:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/acute_inhalation_toxicity:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/predmd/skin_sensitization:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/skin_sensitization:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/acute_oral_toxicity:${VERSION}
docker rmi ${ECR_REGISTRY}${PROJECT}/stoptox/eye_irritation_and_corrosion:${VERSION}
