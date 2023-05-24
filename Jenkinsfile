pipeline {

    agent {
        label 'slave_boy'
    }
    
    triggers {
        githubPush ()
    }

    environment {
        image = 'atnikolo/spring_boot'
    }
    tools {
        gradle 'gradle'
        docker 'docker'
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

        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }

        stage('dockerBuild') {
            steps {
                sh 'docker build -t ${image}'
                sh 'docker tag ${image} ${image}:${BUILD_NUMBER}'
            }
        }
    }
}
