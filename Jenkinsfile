pipeline {
//    agent {
//        docker { 
//          label 'testing' 
//          image 'harbor.fundraiseup.com/fundraiseup/jenkins-agent:latest'
//          registryUrl 'harbor.fundraiseup.com'
//          registryCredentialsId 'harbor-jenkins'
//        }
//    }
    agent { node { label 'testing' } }
    stages {
        stage('Test') {
            steps {
                sh 'echo 1'
            }
        }
    }
}
