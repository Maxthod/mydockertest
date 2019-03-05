pipeline {

    environment {
       registry = "huguesmcd/mydockertest-backend"
       registryCredential = 'dockerhub'
    }
    agent any

    
    stages {
        stage('Docker') {
            steps {
                echo "Docker build ..."
                sh "sudo docker build -t huguesmcd/mydockertest-backend ."
                echo "Docker done."
           }
        }
        stage('Deploy') {
            steps {
                echo "Docker deploy ..."
                sh "sudo docker push huguesmcd/mydockertest-backend"
                echo "Docker done."
            }
        }
    }
}
