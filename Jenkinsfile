pipeline {
    agent any 

    stages {
        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("registryk8s.tjba.jus.br:80/keycloak-lab:${env.BUILD_ID}", '-f ./Dockerfile . --no-cache')
                }
            }
        }
    
    
    }
}
