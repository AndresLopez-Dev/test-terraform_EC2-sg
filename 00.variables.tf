# Provider
variable "region" {
  description = "Region"
}

variable "access_key" {
  description = "pud key"
}

variable "secret_key" {
  description = "secret key"
}


# Instancia
variable "instance_name" {
  description = "Nombre de la instancia"
}

variable "instance_type" {
  description = "Tipo de instancia"
}

variable "ami_id" {
  description = "ID de la AMI"
}

# Tags generales
variable "enviroment" {
  description = "Ambiente"
  default     = "test"
}

variable "owner" {
  description = "Propietario"
}

variable "team" {
  description = "Equipo"
}

variable "project" {
  description = "Proyecto"
}