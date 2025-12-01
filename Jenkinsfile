pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    triggers {
        githubPush()
    }

    stages {
        stage('Code Checkout') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/ThanushKumarVusa/MegaProject.git'
            }
        }

        stage('Build and Test') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
