module "nginx_server_sg" {
  source = "./nginx_server_sg_module"

  sg_name = var.instance_name
  ## Tags
  enviroment = var.enviroment
  owner      = var.owner
  team       = var.team
  project    = var.project
}


module "nginx_server_test" {
  source = "./nginx_server_module"

  ### Variables
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  instance_sg_id     = module.nginx_server_sg.sg_id

  instance_name = var.instance_name
  ## Tags
  enviroment = var.enviroment
  owner      = var.owner
  team       = var.team
  project    = var.project
}

output "nginx_test_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.nginx_server_test.public_ip
}