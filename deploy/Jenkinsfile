pipeline{
    agent any
    stages{
    
    stage('creating tar file'){
        steps{
            sh 'tar -czvf dox.tar.gz *'
            sh 'docker rm -f $(docker ps -aq )'
        }
    }
         stage('docker'){
            steps{
                sh 'docker build -t jenkins:v1 .'
            }
    }
    stage('container'){
        steps{
            sh 'docker run -d --name cont -p 82:80 jenkins:v1 '

        }
    }
    }
}

