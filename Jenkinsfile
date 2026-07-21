pipeline {
    agent { dockerfile true }

    environment {
        // Define your Docker Hub registry repository name
        IMAGE_NAME = "venomlives19/my-app"
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Pulls code containing the Dockerfile from source control
                checkout scm 
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'node --version'
                sh 'svn --version'
                // Runs standard docker build command targeting the current directory
                sh "docker build -t ${IMAGE_NAME}:${env.BUILD_ID} ."
            }
        }
    }
}
