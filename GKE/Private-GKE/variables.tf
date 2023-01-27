variable "project_id" {
  type        = string
  description = "ID of the GCP project to use"
  default     = "ebpf-343515"
}

variable "gcp_region" {
  type         = string
  description  = "GCP region to use for this project"
  default      = "europe-west3"
}

variable "gcp_zone" {
  type         = string
  description  = "GCP zone to use for this project"
  default      = "europe-west3-a"
}

