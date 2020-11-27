terraform {
   required_providers {
     checkpoint = {
       source = "checkpointsw/checkpoint"
       version = "~> 1.1.0"
     }
   }
}

provider "checkpoint" {
  # Configuration options
}

variable "policy_install" {
  type    = bool
  default = false
  description = "Set to true to install policy"
}

module "policy" {
  source = "./policy"
}

resource "checkpoint_management_publish" "publish" { 
  depends_on = [ module.policy ]
  }

resource "null_resource" "installpolicy" {
  count = var.policy_install ? 1: 0

  triggers = {
    version = "1"
}
  provisioner  "local-exec" {
  command = "/home/ubuntu/Terraform_Module_Test/installpolicy.sh"
  interpreter = ["/bin/bash"]
}
depends_on = [checkpoint_management_publish.publish]
}
resource "checkpoint_management_logout" "logout" {
  depends_on = [checkpoint_management_publish.publish]
}