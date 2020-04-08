# lambda-project

## Install AWS SAM to test you Lambda API

[Install link](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)


## For test you lambda app on you local environment use the command

```console
foo@bar:~/cf-codepipeline-lambda$ sam local start-api
```

## For test you lambda app on AWS Console use:

```console
foo@bar:~/cf-codepipeline-lambda$ export BUCKET=<Bucket_Name>
foo@bar:~/cf-codepipeline-lambda$ ./create_lambda_stack.sh
```

## For destroy the test lambda app on AWS Console use:

```console
foo@bar:~/cf-codepipeline-lambda$ ./delete_lambda_stack.sh
```

