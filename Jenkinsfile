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
    stage('Build image') {
      steps {
        sh 'ls -la'
          script {
            dockerImage = docker.build imagename
          }
      }
    }

    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry('https://harbor.fundraiseup.com', registryCredential) {
            dockerImage.push("$BUILD_NUMBER")
            dockerImage.push('latest')
          }
        }
      }
    }
  }
}
