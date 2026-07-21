// pipeline {
//     agent { dockerfile true }

//     environment {
//         // Define your Docker Hub registry repository name
//         IMAGE_NAME = "venomlives19/my-app"
//     }

//     stages {
//         stage('Checkout Code') {
//             steps {
//                 // Pulls code containing the Dockerfile from source control
//                 checkout scm 
//             }
//         }

//         stage('Build Docker Image') {
//             steps {
//                 // Runs standard docker build command targeting the current directory
//                 sh "docker build -t ${IMAGE_NAME}:${env.BUILD_ID} ."
//             }
//         }
//     }
// }

pipeline {
    agent any 
    environment {
        // Define your registry credentials and target image name
        IMAGE_NAME = 'venomlives19/my-app-image'
    }
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Builds the Dockerfile found in the current workspace directory
                    // Tags the image with the unique Jenkins build number
                    customImage = docker.build("${IMAGE_NAME}:${BUILD_NUMBER}", ".")
                }
            }
        }
    }
}