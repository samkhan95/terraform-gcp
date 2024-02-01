pipeline {

    agent any

    tools{
        terraform "terraform"
    }


stages{

        stage('Initialize'){
            steps{
                
                sh 'terraform init'
            
            }
        }
        stage('Plan'){
            steps{
                
                sh 'terraform plan'
            
            }
        }
        stage('apply'){
            steps{
                
                sh 'terraform apply -auto-approve'
            
            }
        }
    }
}