variable "name" {
  type        = string
  description = "bucket name"
}
variable "acl" {
  type        = string
  description = ""
  default     = "private"
}
# variable "policy" {
#   type        = string
#   default     = null
# }
variable "website" {
  description = "map containing website configuration"
  type        = map(string)
  default     = {}
}
variable "files" {
  type    = string
  default = ""
}
variable "key_prefix" {
  type    = string
  default = ""
}
