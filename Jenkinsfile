pipeline {
    agent any 

    stages {
        
        stage ('Remove Container') {
            steps {
                sh 'docker rm -f meugo'
            }
        } 
        
        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("dionatas/getninjas:${env.BUILD_ID}", '-f ./Dockerfile . --no-cache')
                }
            }
        }
        

        stage ('Push Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'token-dockerhub') {
                        dockerapp.push("${env.BUILD_ID}")
                    }
                }
            }
        }

        stage ('Deploy Kubernetes') {
            steps {
                sh 'echo "Não foi realizado deploy no Kubernetes por questões de custos"'
            }
        } 

        stage ('Starting APP') {
            environment {
                tag_version = "${env.BUILD_ID}"
            }
            steps {
                sh 'docker container run -d --name meugo -p 80:8000 dionatas/getninjas:$tag_version'
            }
        }   
    
    
    }
}
