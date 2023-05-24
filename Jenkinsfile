pipeline {
    
    agent {
        label 'slavery'
    }
    

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/atanasnikolov/sample-spring-boot.git'
            }
        }
    }
}
