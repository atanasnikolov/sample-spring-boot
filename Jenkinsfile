pipeline {
    agent 'slave_boy'

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/atanasnikolov/sample-spring-boot.git'
            }
        }
    }
}
