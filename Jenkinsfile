pipeline{
    agent {label'slave1'}
    stages{
        stage('clone'){
            steps{
                git url:'https://github.com/ashoka3228/new-java-prj-oct3.git',branch:'main'
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('deploy'){
            steps{
                sh 'cd target; cp *.war /home/ec2-user/apache-tomcat-10.1.16/webapps'
                sh 'sudo sh /home/ec2-user/apache-tomcat-10.1.16/bin/startup.sh'
                sh 'ps -eaf|grep tomcat'
            }
        }
    }
}
