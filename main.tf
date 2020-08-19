module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project= "jenkinsx-learning-286911"
  cluster_name= "jx-cluster"
}

terraform {
    backend "gcs"{
        bucket = "bl-jx-terraform-state-files"
        prefix = "terraform/state"
    }
}