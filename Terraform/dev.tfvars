env              = "dev"
region           = "us-east-1"
ami              = "ami-xxxx"
instance_type    = "t2.micro"

desired_capacity = 1
min_size         = 1
max_size         = 1

allowed_cidr     = ["0.0.0.0/0"]