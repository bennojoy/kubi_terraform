module "docker" {
   source = "../../modules/docker"

   web_image   =  "nginx"
   web_version = "latest"
}
