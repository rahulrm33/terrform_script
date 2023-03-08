#resource "google_project_iam_member" "project" {
#  project = "platform-dev-base"
#  role    = "roles/iap.tunnelResourceAccessor"
#  member  = "serviceAccount:tf-demo-sa@platform-dev-base.iam.gserviceaccount.com"
#}

resource "google_compute_firewall" "demovpc_firewall_ssh" {
  name    = "${var.name}-allow-ssh"
  network = google_compute_network.demo_vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22","80","443","8080","6443"]
  }

  #source_ranges = ["35.235.240.0/20"]
  depends_on    = [google_compute_network.demo_vpc_network]
}

#resource "google_compute_firewall" "demovpc_firewall_icmp" {
#  name    = "${var.name}-allow-icmp"
#  network = google_compute_network.demo_vpc_network.name
#
#  allow {
#    protocol = "icmp"
#  }
#  depends_on = [google_compute_network.demo_vpc_network]
#}

