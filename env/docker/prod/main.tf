module "docker" {
   source = "../../../modules/docker"

   web_image   =  "nginx"
   web_version = "stable"
   image_name  = "${var.instance_name}"
  
}
