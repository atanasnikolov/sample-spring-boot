pipeline {

    agent any
    
    triggers {
        githubPush ()
    }

    stages {
        stage('retr') {
            steps {
                git branch: 'main', url: 'https://github.com/atanasnikolov/sample-spring-boot.git'
            }
        }
    }
}
