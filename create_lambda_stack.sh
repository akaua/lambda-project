#!/bin/bash
echo "Create Lambda Stack"
echo "Can you create Lambda Stack"
read -p 'Y/N: ' accept
if [[ "$accept" == "Y" ]]; then
    echo "Creating Lambda Stack CloudFormation."
    aws cloudformation package --template-file ./lambda.yml --s3-bucket $BUCKET --output-template-file packaged-template.yml
    aws cloudformation deploy --template-file ./packaged-template.yml --stack-name testLambda --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "Operation canceled."
fi