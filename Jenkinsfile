pipeline {
    agent any

    environment {
        SONAR_HOST_URL = "http://localhost:9000"
        SONAR_PROJECT_KEY = "PracticeProject"
        SONAR_TOKEN = credentials('SONAR_TOKEN')   // Add this token in Jenkins Credentials
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('SonarQube Analysis') {
            steps {
                echo "Running SonarScanner..."
                sh """
                    /opt/sonar-scanner/bin/sonar-scanner \
                      -Dsonar.projectKey=${SONAR_PROJECT_KEY} \
                      -Dsonar.sources=. \
                      -Dsonar.host.url=${SONAR_HOST_URL} \
                      -Dsonar.login=${SONAR_TOKEN}
                """
            }
        }

        stage('Run Shell Script') {
            steps {
                sh './program2.sh'
            }
        }

        stage('Run Python Script') {
            steps {
                sh 'python3 program1.py'
            }
        }

        stage('Run Java Program') {
            steps {
                sh 'javac program3.java'
                sh 'java HelloWorld'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
