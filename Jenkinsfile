 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'none', url: 'https://github.com/AhmedShanwany/Docker_Python.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t python_image:1.1 ./'
				
                     }
            }
        }
      
        stage ('Run Jmeter Docker') {
            steps {
				script{
                bat 'docker run -t -v D:\\QIQ\\courses\\Run_From_CMD:/data  python_image:1.1'
                
				}
			}
        }
		
		}
	}