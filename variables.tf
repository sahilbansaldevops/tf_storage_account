variable "rgname" {
    type = string 
    description = "Name of the resource group"
    validation {
      condition = length(var.rgname) > 5 
      error_message = "The name of the the resource group is too small"
    }
}

variable "rglocation" {
  type = string
  description = "Location of resource group"
  validation {
    condition = contains (["eastus", "westus", "uksouth"], var.rglocation)
    error_message = "please enter the location from possible values only"
  }
}

variable "storageaccount_name" {
    type = string
}

variable "account_replication_type" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "tag" {
  type = map(string)
  default = {
  }
}