pipeline{
    agent any
    stages{
        stage("Git checkout"){
          steps{
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git-tags', url: 'https://github.com/sriram-naresh/Deploy-tomcat-project.git']]])
                }
            }
        stage("build java code"){
            steps{
                script{
                    sh """
                       mvn clean
                       mvn install
                    """
                }
            }
        }
        stage("test java code"){
          steps{
              script{
                  sh """
                     mvn test
                    """
                }
            }
        }
        stage("Deploy"){
            steps{
                script{
                    sh """
                    cp /webapp/target/webapp.war /usr/share/tomcat/webapps/ROOT.war
                    """
                }
            }
        }
    }
}
