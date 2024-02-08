
resource "docker_image" "web" {
  name         = format("%s:%s", var.web_image, var.web_version)
  keep_locally = true
}
resource "docker_container" "nginx" {
  image = docker_image.web.image_id
  name  = var.image_name
  ports {
    internal = 8888
    external = 8000
  }
}



