variable "name_prefix" {
  type        = string
  description = "Name to prefix the name of the Layer"
  default     = "llrt"
}

variable "release" {
  type        = string
  description = "LLRT version to use for the layer"
  default     = "latest"
}

variable "arch" {
  type        = string
  description = "architecture to use for the layer"
  default     = "arm64"
}
