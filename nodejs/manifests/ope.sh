docker-compose build

nodeapp_repo=$(aws ecr describe-repositories --repository-names nodeapp --query 'repositories[0].repositoryUri' --output text)

docker tag nodejs_nodeapp:latest ${nodeapp_repo}:latest

docker push ${nodeapp_repo}:latest

kubectl apply -f nodeapp-deployment.yaml -n frontend

stern nodeapp -n frontend   