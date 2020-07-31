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

    }
    post {
        always {
            sh "docker-compose up"
        }
}
