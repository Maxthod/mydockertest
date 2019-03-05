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
                sh "docker build -it huguesmcd/mydockertest-backend"
                echo "Docker done."
           }
        }
        stage('Deploy') {
            steps {
                echo "Docker deploy ..."
                sh "docker push huguesmcd/mydockertest-backend"
                echo "Docker done."
            }
        }
    }
}
