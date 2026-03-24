terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "BayerApplication"

    workspaces {
      prefix = "django-dev"
    }
  }
}