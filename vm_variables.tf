variable "inst_type" {
  type        = string
  description = "vm instance type"
  default     = "t3.micro"
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