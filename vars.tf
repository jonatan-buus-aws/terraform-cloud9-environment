variable "name" {
    type = string
    default = "my-environment"
    description = "The name of created AWS Cloud9 environment"
}
variable "instance_type" {
    type = string
    default = "t3.xlarge"
    description = "The created EC2 instance in which the AWS Cloud9 environment is provisioned"
}