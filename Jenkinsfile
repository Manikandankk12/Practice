pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Shell Script') {
            steps {
                // If your script is in the root of the repo
                sh './program2.sh'

                // If your script is inside a folder (e.g., scripts/)
                // sh './scripts/factorial.sh'
            }
        }

        stage('Run Python Script') {
            steps {
                sh 'python3 program1.py'
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

