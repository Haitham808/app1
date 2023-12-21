@Library ("shared-library") _
import haitham.com.au.common.Global

Global.set(this, ["SLACK_CHANNEL": "#au-automation"])

pipeline {


    agent {
            kubernetes {
                    label "haitham-test"
                    yaml """
                    apiVersion: v1
                    kind: Pod
                    metadata:
                    name: nginx-echo-hello-world
                    spec:
                    containers:
                      - name: nginx
                        image: nginx:latest
                        command: ["/bin/sh"]
                        args:
                            - "-c"
                            - |
                            echo "Hello World";
                            while true; do sleep 3600; done
                
                
                           """
            }
    }


                stages {
                    stage('Hello') {
                        steps {
                            echo 'Hello World'
                        }
                    }
                }   
     
}