#!/usr/bin/env groovy

pipeline {
    agent any

    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
        timestamps()
    }

    environment {
        BUCKET = "bucketName"
    }
    stages {

        stage('Install dependencies') {
           steps {
               sh 'npm install time'
            }
        }
    

        stage('Package lambda') {
           steps {
               sh 'aws cloudformation package --template-file /src/lambda.yml --s3-bucket $BUCKET --output-template-file outputtemplate.yml'
            }
        }

        stage('Deploy lambda') {
           steps {
               sh 'aws cloudformation deploy --template-file ./outputtemplate.yml --stack-name projectLambda --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM'
            }
        }
    }

    post {
       always {
           deleteDir()
       }
    }
}