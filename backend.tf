terraform {
  backend "gcs" {
    bucket  = "bee-hypo-statefiles"
    prefix  = "terraform/state"
  }
}
