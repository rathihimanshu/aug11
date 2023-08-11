provider "aws" {
  region = "ap-southeast-1"
  access_key = var.accesskey
  secret_key = var.secretkey
}
terraform {
  cloud {
    organization = "aug11"

    workspaces {
      name = "aug11"
    }
  }
}
resource "aws_iam_user" "terraclouduser" {
  name = var.username
}