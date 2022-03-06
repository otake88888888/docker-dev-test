ACCOUNT_ID=$(aws sts get-caller-identity --output text --query Account)
AWS_REGION=$(aws configure get default.region)
aws ecr get-login-password | docker login --username AWS --password-stdin https://${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
