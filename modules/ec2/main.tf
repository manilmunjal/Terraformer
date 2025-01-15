resource "aws_instance" "web" {
    count = length(var.ec2_names)
	ami = data.aws_ami.amazon-2.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg_id]
    associate_public_ip_address = true
    subnet_id = var.subnets[count.index]
    availability_zone = data.aws_availability_zones.available.names[count.index]
    
    user_data = <<EOF
    #!/bin/bash
    # Use this for your user data (script from top to bottom)
    # install httpd (Linux 2 version)
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
    EOF

    tags = {
        Name = var.ec2_names[count.index]
    }
}