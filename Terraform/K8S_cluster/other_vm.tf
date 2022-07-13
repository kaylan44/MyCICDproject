resource "google_compute_instance" "vm_instance_jenkins" {
  name         = "terraform-jenkins"
  machine_type = "e2-micro"
  zone    = var.zone

  boot_disk {
    initialize_params {
    image = "cos-cloud/cos-stable"    
    }
  }
}

resource "google_compute_instance" "vm_instance_nexus" {
  name         = "terraform-jenkins-nexus"
  machine_type = "e2-micro"
  zone    = var.zone

  boot_disk {
    initialize_params {
    image = "cos-cloud/cos-stable"    
    }
  }
}
