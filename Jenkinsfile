pipeline{
    agent any

    tools
    {
        maven maven3
    }
    stages{
        stage ("Code Checkout")
        {
            git url: 'https://github.com/ThanushKumarVusa/MegaProject.git', branch: 'master'
        }
        stage ("Build and Test")
        {
            steps{
                sh 'mvn clean install'
            }
            post {
                always {
                    echo 'Build and Test stage completed.'
                }
            }
        
        }
        // {
        //     steps{
        //         withSonarQubeEnv('SonarQubeServer'){
        //             sh 'mvn clean verify sonar:sonar'
        //         }
        //     }
        // }
        // stage ("Build Docker Image")
        // {
        //     steps{
        //         script{
        //             dockerImage = docker.build("your-dockerhub-username/your-app-name:${env.BUILD_ID}")
        //         }
        //     }
        // }
        // stage ("Push Docker Image")
        // {
        //     steps{
        //         script{
        //             docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id'){
        //                 dockerImage.push()
        //             }
        //         }
        //     }
        // }
        
    }
}