node {
  checkout scm
  
  def customImage = docker.build("my-image:1.0")
  
  customImage.inside {
    sh 'make test'
  }
}
