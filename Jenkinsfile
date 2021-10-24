pipeline{
    agent {label 'slave'}
    tools{
        jdk 'jdk'
        maven  'maven'
    }
    stages{
        stage("Git checkout"){
          steps{
              
                }
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
        stage("Docker build"){
            steps{
                script{
                    sh 'docker build -t java-image . '
                }
            }
        }
    }
}