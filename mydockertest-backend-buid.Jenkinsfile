pipeline {

    environment {
       registry = "huguesmcd/mydockertest-backend"
       registryCredential = 'dockerhub'
    }
    agent any

    
    stages {
         stage('Maven') {
            steps {
                echo "Maven build ..."
                sh "mvn install"
                echo "Maven done."
           }
        }
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
