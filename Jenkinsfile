pipeline {
    agent {
        docker { node { label 'testing' }}
    }
    stages {
        stage('Test') {
            steps {
                sh 'echo 1'
            }
        }
    }
}
