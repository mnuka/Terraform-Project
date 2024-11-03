
resource "aws_instance" "basics" {
    ami = var.ami
    instance_type = var.instance_type
    provider = aws.us-east-1

}
