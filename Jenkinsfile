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
                sshagent(['medilab-ansible-controller-server']) {
                    //Dockerfile,jfrog.sh,artifactory-playbook.yml
                    sh 'scp Dockerfile ansible-admin@172.31.28.198:/opt/app-files'
                    sh 'scp jfrog.sh ansible-admin@172.31.28.198:/opt/app-files'
                    sh 'scp artifactory-playbook.yml ansible-admin@172.31.28.198:/opt/app-files'
                }

            }
        }
    }
}
