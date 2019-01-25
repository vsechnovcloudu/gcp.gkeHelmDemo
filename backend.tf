terraform {
  backend "gcs" {
    bucket  = "vvc_tfstates"
    prefix  = "terraform/state"
  }
}
