data "terraform_remote_state" "version_check" {
  backend = "atlas"
  config {
    name = "Darnold-TFE-SentinelDemos/SimpleApp-ReleaseVersion"
  }
}

resource "null_resource" "nonop" {
  provisioner "local-exec" {
      command = "echo ${var.service_name} ${var.service_version}"
  }
}

variable "service_name" {

}

variable "service_version" {

}
