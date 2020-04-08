#!/bin/bash
echo "Delete Teste Stack"
echo "Can you delete Teste Stack"
read -p 'Y/N: ' accept
if [[ "$accept" == "Y" ]]; then
    echo "Deliting Teste Stack CloudFormation."
    aws cloudformation delete-stack --stack-name testLambda
else
    echo "Operation canceled."
fi
