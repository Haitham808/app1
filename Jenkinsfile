@Library ("shared-library") _
import haitham.com.au.common.Global

//Global.set(this, ["SLACK_CHANNEL": "#au-automation"])

// Global.script.echo("hi from global")

monolithPipeline([SLACK_CHANNEL: '#au-release-planning',
        ARGOCD_APP_NAME: 'monolith'
  ])      


// pipeline {


//     agent {
//             kubernetes {
//                     label "haitham-test"
//                     yaml """
//                     apiVersion: v1
//                     kind: Pod
//                     metadata:
//                     name: nginx-echo-hello-world
//                     spec:
//                     containers:
//                       - name: nginx
//                         image: nginx:latest
//                         command: ["/bin/sh"]
//                         args: ["sleep","3600"]
//                            """
//             }
//     }


//                 stages {
//                     stage('Hello') {
//                         steps {
//                             echo 'Hello World'
//                         }
//                     }
//                 }   
     
// }