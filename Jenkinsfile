pipeline {
//  agent {
//    label 'docker-agent'
//  }

  agent {
    docker 'harbor.fundraiseup.com/fundraiseup/jenkins-agent:latest'
  }

  environment {
    imagename = "harbor.fundraiseup.com/fundraiseup/test"
    registryCredential = 'harbor'
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

    stage('Test') {
      steps {
        sh 'docker-compose up -d'
        sleep 10
        sh 'docker-compose down -v'
      }
    }
  }
}
