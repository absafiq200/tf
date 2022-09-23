variable "inst_type" {
  type        = string
  description = "vm instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "ami id of amazon linux"
  default     = "ami-026b57f3c383c2eec"
}

variable "linux_key_pair" {
  type        = string
  description = "key pair name"
  default     = "safkey"
}

variable "my_root_volume_size" {
  type        = number
  description = "Root volume size"
}

variable "my_root_volume_type" {
  type        = string
  description = "root volume type"
  default     = "gp2"
}

variable "my_data_volume_size" {
  type        = number
  description = "my data volume size"
}

variable "my_data_volume_type" {
  type        = string
  description = "my data volume type"
  default     = "gp2"
}