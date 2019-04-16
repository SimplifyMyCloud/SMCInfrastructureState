# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Networking state
# ---------------------------------------------------------------------------------------------------------------------

# ensure data gathered from default project

# GCP project & region output
output "GCP region" {
  value = "Terraform is targeting the ${var.gcp_region} region"
}

data "google_project" "default_project" {}

output "GCP default project" {
  value = "a GCP project named ${data.google_project.default_project.name} has the id ${data.google_project.default_project.number}"
}

# GCP VPC default network output
data "google_compute_network" "default" {
  name = "default"
}

output "GCP default VPC network" {
  value = "a GCP default VPC network named ${data.google_compute_network.default.name}"
}

# GCP VPC default subnet output
data "google_compute_subnetwork" "default" {
  name = "default"
}

output "GCP default VPC subnetwork" {
  value = "a GCP default VPC subnetwork list with the name ${data.google_compute_subnetwork.default.name} has a CIDR range of ${data.google_compute_subnetwork.default.ip_cidr_range}"
}