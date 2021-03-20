#! groovy
node {
   stage 'Checkout'
        checkout scm

  dir("helloworld") {
    stage 'Setup'
      sh 'npm install'

    stage 'Mocha test'  
      echo 'Running tests'    
      sh './node_modules/mocha/bin/mocha'

    stage 'Cleanup'      
      echo 'prune and cleanup'
      sh 'npm prune'
      sh 'rm node_modules -rf'       
  }   
}
