pipeline {

    agent {
        label 'slave_boy'
    }
    
    triggers {
        githubPush ()
    }

    tools {
        gradle 'gradle'
    }

    stages {
        stage('cloneRepo') {
            steps {
                git branch: 'main', url: 'https://github.com/atanasnikolov/sample-spring-boot.git'
            }
        }
        stage('Build') {
            steps {
                sh './gradlew build'
            }
        }
    }
}
