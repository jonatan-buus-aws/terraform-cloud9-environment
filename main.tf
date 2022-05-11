resource "aws_cloud9_environment_ec2" "environment" {
	instance_type = var.instance_type
	name = var.name
	automatic_stop_time_minutes = 1440
}
data "aws_region" "region" {
}
resource "null_resource" "output" {
	provisioner "local-exec" {
		command = "echo Cloud 9 environment available at: https://${data.aws_region.region.name}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.environment.id}"
	}
}