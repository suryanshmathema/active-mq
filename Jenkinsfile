pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Checkout source code from version control if necessary
                // For example, if using Git:
                 git 'https://github.com/suryanshmathema/active-mq.git'

                // Build the Docker image
                script {
                    def imageName = "active-mq:5.17.0"
                    // def dockerfilePath = "/path/to/Dockerfile"

                    sh "docker build -t ${imageName} -f Dockerfile ."
                }
            }
        }

        stage('Run') {
            steps {
                // Run the Docker container
                script {
                    def containerName = "active-mq-container"

                    sh "docker run -d --name ${containerName} -p 61616:61616 -p 8161:8161 active-mq:5.17.0"
                }
            }
        }
    }
}
