resource "random_string" "drupal_password" {
  length  = 16
  special = true
}

resource "random_string" "wordpress_password" {
  length  = 16
  special = true
}

resource "random_string" "django_password" {
  length  = 16
  special = true
}

variable "drupal_password" {
  type = "string"
  default = ""
}

variable "wordpress_password" {
  type = "string"
  default = ""
}

variable "django_password" {
  type = "string"
  default = ""
}

resource "google_sql_user" "drupal" {
  name     = "drupal"
  password = "${var.drupal_password != "" ? var.drupal_password : random_string.drupal_password.result}"
  instance = "${google_sql_database_instance.gcp-pilot-sql-postgres.name}"
}

resource "google_sql_user" "wordpress" {
  name     = "wordpress"
  password = "${var.wordpress_password != "" ? var.wordpress_password : random_string.wordpress_password.result}"
  instance = "${google_sql_database_instance.gcp-pilot-sql-mysql.name}"
}

resource "google_sql_user" "django" {
  name     = "django"
  password = "${var.django_password != "" ? var.django_password : random_string.django_password.result}"
  instance = "${google_sql_database_instance.gcp-pilot-sql-mysql.name}"
}




