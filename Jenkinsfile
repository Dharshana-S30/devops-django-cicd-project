pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Dharshana-S30/devops-django-cicd-project.git'
            }
        }
        

        stage('Terraform') {
    steps {
        sh '''
        cd terraform
        export TF_PLUGIN_TIMEOUT=10m
        echo "Skipping Terraform - infra already created"
        '''
    }
}
        stage('Run Deployment Script') {
            steps {
                sh '''
                chmod +x scripts/deploy.sh
                ./scripts/deploy.sh
                '''
            }
        }

    }
}
