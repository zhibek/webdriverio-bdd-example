pipeline {

    agent {
        docker 'geekykaran/headless-chrome-node-docker'
    }

    triggers {
        cron('H H(0-5) * * *')
    }

    stages {
        stage('Prepare BDD Tests') {
            steps {
                echo 'Prepare BDD Tests...'
                sh 'rm -fr build'
                sh 'yarn install'
            }
        }
        stage('Run BDD Tests') {
            steps {
                echo 'Run BDD Tests...'
                sh 'yarn test'
            }
        }
    }

    post {
        always {
            archive 'build/*.xml'
            archive 'build/screenshots/*.png'
            junit 'build/*.xml'
        }
    }

}
