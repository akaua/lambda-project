#!/bin/bash
echo "Create Teste Message Stack"
echo "Can you create Teste Message Stack"
read -p 'Y/N: ' accept
if [[ "$accept" == "Y" ]]; then
    echo "Creating Teste Stack CloudFormation."
    aws cloudformation package --template-file ./src/lambda.yml --s3-bucket kb8-udacity-store --output-template-file packaged-template.yml
    aws cloudformation deploy --template-file ./packaged-template.yml --stack-name testLambda --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "Operation canceled."
fi