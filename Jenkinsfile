pipeline {
  agent {
      label 'testing'
  }

  environment {
    imagename = "harbor.fundraiseup.com/fundraiseup/test"
    registryCredential = 'harbor-jenkins'
    dockerImage = ''
  }

  stages {
      stage('Test') {
          steps {
              sh 'ls -la'
              script {
                dockerImage = docker.build imagename
              }
          }
      }
  }
}
