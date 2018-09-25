GCP Pilot
=========
This repository contains a sample application and supporting configuration files
for Google App Engine Standard to be tested and evaluated.

Terraform
=========
Terraform orchestrates the project setup, creating databases, source repo,
storage and kms.

Circle CI
=========
Terraform and the Google Cloud SDK are invoked on commit by Circle CI, which
enables required APIs, creates a Terraform plan, and waits for operator approval
prior to changing production.

Java Spring Boot / App Engine
=============================
To test locally run `mvn appengine:run`.  There are two sets of AppEngine
plugins available, use the
[Cloud SDK based Maven plugin](https://cloud.google.com/appengine/docs/standard/java/tools/maven-reference)
for reference.

Bootstrap Process
=================

1. Create a bucket to store Terraform State:
   ```
   gsutil mb gs://gcp-pilot-terraform-state
   ```
1. Create a Terraform service account via
   `Console -> IAM & admin -> Service Accounts`
1. Save the JSON credentials to `$HOME/gcloud-service-key.json`
1. Enabled Audit Logging via
   `Console -> IAM & admin -> Audit Logs`
   Waiting on Terraform to merge [this feature](https://github.com/terraform-providers/terraform-provider-google/issues/936)
