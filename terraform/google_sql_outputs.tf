output "drupal_connection_string" {
  value = "pgsql://${google_sql_user.drupal.name}:${google_sql_user.drupal.password}@/${google_sql_database.drupal.name}?host=/cloudsql/${google_sql_database_instance.gcp-pilot-sql-postgres.connection_name}"
}

output "wordpress_connection_string" {
  value = "mysql://${google_sql_user.wordpress.name}:${google_sql_user.wordpress.password}@/${google_sql_database.wordpress.name}?host=/cloudsql/${google_sql_database_instance.gcp-pilot-sql-mysql.connection_name}"
}

output "django_connection_string" {
  value = "mysql://${google_sql_user.django.name}:${google_sql_user.django.password}@/${google_sql_database.django.name}?host=/cloudsql/${google_sql_database_instance.gcp-pilot-sql-mysql.connection_name}"
}

output "java_jdbc_connection_string" {
  value = "jdbc:mysql://google/${google_sql_user.django.name}?cloudSqlInstance=${google_sql_database_instance.gcp-pilot-sql-mysql.connection_name}&password=${google_sql_user.django.password}&useSSL=false"
}
