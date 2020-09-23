pipeline {
    agent {
        docker { 
          label 'testing' 
          image 'harbor.fundraiseup.com/fundraiseup/jenkins-agent:latest'
          registryUrl 'harbor.fundraiseup.com'
          registryCredentialsId 'harbor-jenkins'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'echo 1'
            }
        }
    }
}
