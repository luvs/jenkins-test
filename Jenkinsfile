node {
    checkout scm

    docker.withServer('tcp://135.181.19.239:2375', 'harbor-jenkins') {
      sh 'echo 1'
      sleep 60
      sh 'echo 2'
    }
}
