pipeline {

    agent {
        label 'slave_boy'
    }
    
    triggers {
        githubPush ()
    }

    environment {
        image = 'atnikolo/spring_boot'
        dockerpass = credentials('notMyCredentials')
    }
    tools {
        gradle 'gradle'
        dockerTool 'docker'
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
                sh 'docker build -t ${image} .'
                sh 'docker tag ${image} ${image}:${BUILD_NUMBER}'
            }
        }

        stage('dockerHubLogin') {
            steps {
                sh 'docker login -u $dockerpass_USR -p $dockerpass_PSW'

            }
        }
        stage ('dockerPush'){
            steps{
                sh 'docker push ${image}:${BUILD_NUMBER}'
            }
        }
        stage('runApp'){
            steps{
                sh 'java -jar app.jar'
            }
        }
    }
}
