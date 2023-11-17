pipeline {
agent any
tools{
    docker 'Docker version 24.0.6, build ed223bc'
}
stages{
stage('Build docker'){
   steps{
       sh'docker clean install'
        }
    }
  }
}
