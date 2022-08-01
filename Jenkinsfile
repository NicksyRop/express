pipeline {
    agent any
  
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
