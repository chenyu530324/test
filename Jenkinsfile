pipeline {
    agent node1


    stages {
            stage('build') {
                steps {
                    sh 'chmod +x gradlew'
                    sh './gradlew clean build'
                }
            }

            stage('push-image') {
                        steps {
                            sh '''
                            docker-compose up -d
                            '''
                        }
            }
            }
    }
