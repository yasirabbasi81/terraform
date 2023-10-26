variable "ENV" {
  type    = string
  default = "test"
}

variable "RESOURCE_GROUP" {
  type    = string
  default = "workshop"
}

variable "SAKey" {
  type    = string
  default = "iuFIuuwHybzxmkP9ccyaObEB0K4jlPlyD+ruV0NKolQukPglfF7m/pIn8PIrdLUnpa9DXHq87E7J+AStvx9Rfw=="
}

locals {
  common_tags = {
    Author      = "Yasir Abbasi"
    Department  = "DevOps"
    Environment = var.ENV
    Backup      = "False"
  }
}
 