pipeline {
    agent {
        docker {
            image 'node:lts-buster-slim'
            args '-p 3000:3000'
        }
    }

        stages{
        stage('build') {
            steps {
                
                sh 'npm install'
              
            }
        }
        stage('Test') {
            steps {
                
                sh 'npm test'
              
            }
        }
        stage('deliver') {
            steps {
                
                sh 'npm run build'
                sh 'npm start'
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
              
            }
        }
    }
}
