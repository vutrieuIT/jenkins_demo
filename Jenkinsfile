pipeline{
    agent any
    stages {
        stage ('clone'){
            steps {
                git 'https://github.com/vutrieuIT/jenkins_demo.git'
            }
        }
        stage ('build'){
            steps {
                withDockerRegistry(credentialsId: 'DockerHub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t trieuvu/nodejs .'
                    sh 'docker push trieuvu/nodejs'
                }
            }
        }
    }
}