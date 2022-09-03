pipeline {
    agent any
    tools {
        maven 'Medilab_Maven_Build_Platform'
    }
    stages {
        stage('pull the code from SCM'){
            steps {
                echo 'connecting to github and pulling the code..'
                git branch: 'main',
                url: 'https://github.com/Narsi-Myteaching/medilab-preclinic-applications.git'
                echo 'source code pulling completed'
            }
        }
        stage('build the source code'){
            steps{
                echo 'building the source code is started...'
                sh 'mvn clean deploy -DskipTests=true -Dbuild.number=${BUILD_NUMBER}'
            }
        }

        stage('copy the files to ansible server'){
            steps{
                echo 'connecting to ansible server'
                sshagent(['Ansible-Server-Machine']) {
                    //Dockerfile,jfrog.sh,artifactory-playbook.yml
                    sh 'scp Dockerfile ansible-admin@172.31.28.198:/opt/app-files'
                    sh 'scp jfrog.sh ansible-admin@172.31.28.198:/opt/app-files'
                    sh 'scp artifactory-playbook.yml ansible-admin@172.31.28.198:/opt/app-files'

                    sh '''
                     ssh -tt ansible-admin@172.31.28.198 << EOF
                     ansible-playbook  /opt/app-files/artifactory-playbook.yml    
                     exit
                     EOF
                    '''
                }

            }
        }
        stage("trigger application db deploy job"){
          steps{
              build job: 'medilab-preclinic-CD-db-deployment-pipeline'
          }
      }
    }
}
