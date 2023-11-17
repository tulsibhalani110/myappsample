pipeline {
    agent any 
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                   
                    def dockerBuildLogsFile = 'docker_build_logs.txt'
                    sh "docker build -t your-image-name:latest . --quiet > ${dockerBuildLogsFile}"
                    
                    def dockerBuildLogs = readFile(file: dockerBuildLogsFile).trim()
                    echo "Docker Build Logs:\n${dockerBuildLogs}"

                    if (currentBuild.resultIsWorseThan('SUCCESS')) {
                        error 'Docker build failed'
                }
            }
        }
    }
}

