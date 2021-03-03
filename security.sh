# https://github.com/awslabs/git-secrets
git secrets --add 'password ?=+ ?[A-Za-z0-9]+'

# https://pyup.io/safety/
# Safety checks your dependencies for known security vulnerabilities.
pip install safety
safety check
safety check -r requirements.txt

#!/bin/bash
# This script runs a security check
git secrets --scan -r
safety check -r requirements.txt

# Jenkinsfile
pipeline {
    agent any
    stages {
        stage('SecTest') {
            steps {
                sh 'git secrets --scan -r'
                sh 'safety check -r requirements.txt'
            }
        }
        stage('AppTest') {
            steps {
                sh 'python.exe tests.py'
            }
        }
    }
}
