variable "action" {
  type    = string
  default = "sts:AssumeRole"
}

variable "effect" {
  type    = string
  default = "Allow"
}

variable "service" {
  type    = string
  default = "ec2.amazonaws.com"
}