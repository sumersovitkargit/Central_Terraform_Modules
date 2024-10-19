variable "databases" {
  description = "Map of SQL databases to create, with optional collation and edition"
  type = map(object({
    collation = optional(string)
    edition   = optional(string)
  }))
  default = {}
}

variable "server_id" {
  description = "The ID of the SQL Server where the databases will be created"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}