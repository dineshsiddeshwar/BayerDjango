terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
            version = ">=4.21.0"
		}
	}

	backend "remote" { 
		hostname = "app.terraform.io"
		organization = "BayerApplication"
		workspaces {
			name = "Bayer${var.env}"
		}
}
}