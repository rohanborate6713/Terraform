#to initialize dokcer provider
# this soure is available in terraform registry

terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  # Configuration options
}


#to automate the docker based application we just need to initialize this script