// Postgres Database
resource "google_sql_database_instance" "gcp-pilot-sql-postgres" {
  name = "gcppilot-postgres-example"
  database_version = "POSTGRES_9_6"
  region = "${var.region}"

  settings {
    tier = "db-f1-micro"
  }
}

// MySQL Database
resource "google_sql_database_instance" "gcp-pilot-sql-mysql" {
  name = "gcppilot-mysql-example"
  database_version = "MYSQL_5_6"
  region = "${var.region}"

  settings {
    tier = "db-f1-micro"
  }
}
