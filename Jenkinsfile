pipeline {
    agent any
    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'The greeting message')
        choice(name: 'BRANCH', choices: ['master', 'dev'], description: 'Branch to build')
        booleanParam(name: 'DEPLOY', defaultValue: true, description: 'Czy wykonać etap wdrożenia (Deploy)?')
    }
    stages {
        stage('Example') {
            steps {
                echo "${params.GREETING}, we are building the ${params.BRANCH} branch."
            }
        }
        stage('Deploy') {
            when {
                expression { params.DEPLOY }
            }
            steps {
                echo "Deploying the ${params.BRANCH} branch..."
            }
        }
    }
}
