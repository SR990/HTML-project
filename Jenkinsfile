pipeline {
    agent any
    stages {
        stage ('clone the code') {
            steps {
                # clone the code
                git branch:'main',url:'https://github.com/Radhakrishnaaaaa/HTML-project.git'
            }
        }
        stage ('deployement') {
            steps {
                # copy code from jenkins to webserver
                sh ''''' cp -r /var/lib/jenkins/workspace/pipeline/* /var/www/html '''''
            }
        }
    }
}
