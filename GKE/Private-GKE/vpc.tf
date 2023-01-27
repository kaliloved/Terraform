resource "google_compute_network" "vpc"{
  project                  = var.project_id
  name                     = "gke-priv-vpc"
  auto_create_subnetworks  = "false"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "gke-priv-sub"
  ip_cidr_range = "10.156.0.0/20"
  region        = var.gcp_region
  network       = google_compute_network.vpc.id
}