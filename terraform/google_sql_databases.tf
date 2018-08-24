resource "google_sql_database" "drupal" {
  name      = "drupal"
  instance  = "${google_sql_database_instance.gcp-pilot-sql-postgres.name}"
}

resource "google_sql_database" "wordpress" {
  name      = "wordpress"
  instance  = "${google_sql_database_instance.gcp-pilot-sql-mysql.name}"
}

resource "google_sql_database" "django" {
  name      = "django"
  instance  = "${google_sql_database_instance.gcp-pilot-sql-mysql.name}"
}





