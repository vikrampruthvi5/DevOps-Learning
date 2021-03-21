resource "aws_key_pair" "docker_key" {
    provider = aws.region_master
    key_name = "dockerKey"
    public_key = file("C:\\Users\\vikra\\Documents\\Terraform\\KEYS\\docker-Key\\dockerKey.pub")
}

resource "aws_instance" "docker-jenkins" {
    provider = aws.region_master
    ami = "ami-0533f2ba8a1995cf9"
    instance_type = "t2.medium"
    associate_public_ip_address = true
    key_name = aws_key_pair.docker_key.key_name
    vpc_security_group_ids = [ "sg-04ff63174e016d45c" ]
    tags = {
      "Name" = "Docker-Jenkins"
      "Type" = "T2Medium"
    }
}