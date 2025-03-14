#to create docker image and docker container and launch aplication

resource "docker_image" "my_image" {
     
     #image name name and path 
     name = "trainwithshubham/node-app-batch-6:latest"

     #delete image after conatiner creation
     keep_locally = false
}

resource "docker_container" "my_container" {

#pre-requistes for container creation
#image
#ports 

    image = docker_image.my_image.name
    name = "node-app"

    ports{
            internal = 8000
            external = 8000
    }

#this resource block depends on first resource block
#so first block execute first and then second
    depends_on = [ docker_image.my_image ]

  
}

