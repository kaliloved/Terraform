resource "google_service_account" "gke_priv_SA" {
  account_id      =  "sa-gke-priv"
  display_name    =  "A servie account used to manage private GKE cluster"
}


locals {
  roles = toset([
    "roles/monitoring.viewer",
    "roles/monitoring.metricWriter",
    "roles/logging.logWriter",
    "roles/stackdriver.resourceMetadata.writer",
  ])
}

resource "google_project_iam_member" "manage_private_GKE" {
  for_each     = local.roles

  project      = var.project_id
  role         = each.key
  member       = "serviceAccount:${google_service_account.gke_priv_SA.email}"
}