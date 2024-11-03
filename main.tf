# main.tf
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

# Pull the Jenkins Docker image
resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
  keep_locally = false
}

# Create and run the Jenkins container
resource "docker_container" "jenkins_container" {
  name  = "jenkins_container"
  image = docker_image.jenkins.name

  # Map ports for Jenkins Web UI and agent connections
  ports {
    internal = 8080
    external = 8080
  }

  ports {
    internal = 50000
    external = 50000
  }
}

