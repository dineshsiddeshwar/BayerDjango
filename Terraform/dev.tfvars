env              = "dev"
region           = "us-east-1"
ami              = "ami-0b09ffb6d8b58ca91"
instance_type    = "t2.micro"

desired_capacity = 1
min_size         = 1
max_size         = 1

allowed_cidr     = ["0.0.0.0/0"]