resource "google_container_cluster" "primary" {
  name               = "superden"
  zone               = "europe-west3-a"
  initial_node_count = "${var.nodecount}"

  master_auth {
    username = ""
    password = ""
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      foo = "bar"
    }

    tags = ["foo", "bar"]
  }
}

resource "google_sql_database_instance" "primary" {
  name = "bee-hypo-db-${terraform.workspace}"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "users" {
  name      = "users-db"
  instance  = "${google_sql_database_instance.primary.name}"
  charset   = "latin1"
  collation = "latin1_swedish_ci"
}
