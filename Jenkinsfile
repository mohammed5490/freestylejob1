node {
    // Define the workspace directory
    def workspace = pwd()

    try {
        // Stage to checkout the code from GitHub
        stage('Checkout') {
            checkout scm
        }

        // Stage to compile the Java code
        stage('Build') {
            sh 'javac Hello.java'
        }

        // Stage to run the Java application
        stage('Run') {
            sh 'java Hello'
        }
    } catch (Exception e) {
        // Handle errors
        currentBuild.result = 'FAILURE'
        throw e
    } finally {
        // Clean up workspace
        deleteDir()
    }
}
