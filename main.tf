data "terraform_remote_state" "version_check" {
  backend = "atlas"
  config {
    name = "Darnold-TFE-SentinelDemos/SimpleApp-ReleaseVersion"
  }
}

variable "service_name" {

}

variable "service_version" {
    
}
