pipeline {
    agent any

    tools{
        maven 'maven3'
    }
    environment {
        SCANNER_HOME= tool 'sonar-scanner'
        IMAGE_TAG= "v${BUILD_NUMBER}"
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/praduman8435/Capstone-Mega-DevOps-Project.git'
            }
        }
        stage('Compilation') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Testing') {
            steps {
                sh 'mvn test -DskipTests=true'
            }
        }
        stage('Trivy FS Scan') {
            steps {
                sh 'trivy fs --format table -o fs-report.html .'
            }
        }
        stage('Code Quality Analysis') {
            steps {
                withSonarQubeEnv('sonar') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar-projectName=GCBank -Dsonar.projectKey=GCBank \
                            -Dsonar.java.binaries=target '''
                }
            }
        }
        stage('Quality Gate Check'){
            steps{
                waitForQualityGate abortPipeline: false, credentialsId: 'sonar-token'
            }
        }
        stage('Build the Application'){
            steps{
                sh 'mvn package -DskipTests'
            }
        }
        stage('Push Artifacts to Nexus'){
            steps{
                withMaven(globalMavenSettingsConfig: 'Capstone', jdk: '', maven: 'maven3', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn clean deploy -DskipTests'
                }
            }
        }
        stage('Build & Tag Docker Image'){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh 'docker build -t thepraduman/bankapp:$IMAGE_TAG .'
                    }
                }
            }
        }
        stage('Docker Image Scan') {
            steps {
                sh 'trivy image --format table -o image-report.html thepraduman/bankapp:$IMAGE_TAG'
            }
        }
        stage('Push Docker Image') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh 'docker push thepraduman/bankapp:$IMAGE_TAG'
                    }
                }
            }
        }
    }
}
