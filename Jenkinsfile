pipeline 
{
    agent any 
    tools {
        maven "maven_3_5_0"
    }
 stages{
     stage('build maven'){
         steps {
             git'https://github.com/tulsibhalani110/myappsample'
         }
     }
     stage('build docker images'){
         steps{
             script{
                 sh 'docker build -t oh/devops-integration .'
 }
}
         
     
