env              = "prod"
region           = "us-east-1"
ami              = "ami-0b09ffb6d8b58ca91"
instance_type    = "t3.small"

desired_capacity = 1
min_size         = 1
max_size         = 2

allowed_cidr     = ["0.0.0.0/0"]