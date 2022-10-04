provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  token                  = data.aws_eks_cluster_auth.cluster.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}

provider "aws" {
  region = "ap-southeast-1"
  # profile = "default"
  access_key = var.access_key
	secret_key = var.secret_key
}