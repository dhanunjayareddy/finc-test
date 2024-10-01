pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'dhanureddy/finc-test:latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/dhanunjayareddy/finc-test'
            }
        }
        stage('Build with Maven') {
            steps {
                script {
                    sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                        sh 'docker push ${DOCKER_IMAGE}'
                    }
                }
            }
        }
        // stage('Deploy to Kubernetes') {
        //     steps {
        //         script {
        //             sh 'kubectl apply -f k8s/deployment.yaml'
        //         }
        //     }
        // }
    }
    // post {
    //     always {
    //         echo 'Pipeline Finished'
    //     }
    //     success {
    //         echo 'Deployment Successful'
    //     }
    //     failure {
    //         echo 'Deployment Failed'
    //     }
    // }
}
