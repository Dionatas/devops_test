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
    
    
    }
}
