resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance_jenkins" {
  name         = "terraform-jenkins"
  machine_type = "e2-micro"
  zone    = var.zone

  boot_disk {
    initialize_params {
    image = "cos-cloud/cos-stable"    
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

resource "google_compute_instance" "vm_instance_nexus" {
  name         = "terraform-nexus"
  machine_type = "e2-micro"
  zone    = var.zone

  boot_disk {
    initialize_params {
    image = "cos-cloud/cos-stable"    
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
