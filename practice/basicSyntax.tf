#basic terraform syntax

#for new file creation

# <block> <paramater> {
#    <arguments>
# }


resource "local_file" "my_file" {
  filename = "terrform.txt"
  content = "this is terrform file created automatically by terraform"
}


#resource --> block
#local_file (resource type) and my_file(resource name) are the  --> parameters
# filename = "terrform.txt"                --> arguments
#  content = "this is terrform file"       --> arguments