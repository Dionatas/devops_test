pipeline {
    agent any 

    stages {
        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("dionatas/getninjas:${env.BUILD_ID}", '-f ./Dockerfile . --no-cache')
                }
            }
        }

        stage ('Starting Service') {
            steps {
                sh 'docker container run -d --name meugo -p 80:8000 dionatas/getninjas:'${env.BUILD_ID}''
                sh 'sleep 5'
            }
        }   
    
    
    }
}
