pipeline {
environment {
        registry = "vilayil/phpnew_application"
        registryCredential = 'docker'
        dockerImage = ''
    }

    agent any
    stages {
        stage('Cloning our Git') {
            steps {
                git 'https://github.com/vilayilakshay/User-Management-PHP-MYSQL-master.git'
            }
        }

        stage('Building our image') {
            steps {
                script {
                      bat label: '', script: 'docker build . -t demonew_application'
                      bat label: '', script: 'docker tag demonew_application vilayil/phpnew_application:demonew_application'
                      
                }
            }
        }

        stage('Deploy our image') {
            steps {
                script {
                   docker.withRegistry( '', registryCredential ) {
                       bat label: '', script: 'docker push  vilayil/phpnew_application:demonew_application'
                    }
                }
            }
        }

    }
}
