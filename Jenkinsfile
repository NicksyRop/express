pipeline {
    agent {
        docker {
            image 'node:16'
            args '-p 3000:3000'
        }

   
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
              
            }
        }
    }
}
