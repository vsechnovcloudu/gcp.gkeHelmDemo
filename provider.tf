provider "google" {
  # credentials = "${file("prgandrs-1545764074679-0477023800bb.json")}"
  project     = "bee-hypo-${terraform.workspace}"
  region      = "europe-west3"
}
