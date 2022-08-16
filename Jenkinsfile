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
            environment {
                tag_version = "${env.BUILD_ID}"
            }
            steps {
                sh 'docker container run -d --name meugo -p 80:8000 dionatas/getninjas:$tag_version'
            }
        }   
    
    
    }
}
