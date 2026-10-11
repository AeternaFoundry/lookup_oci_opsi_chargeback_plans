variable "opsi_chargeback_plans_lookup" {
  description = <<EOT
Map of opsi_chargeback_plans_lookup, attributes below
Optional:
    - chargebackplan_id
    - compartment_id
    - compartment_id_in_subtree
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    chargebackplan_id         = optional(string)
    compartment_id            = optional(string)
    compartment_id_in_subtree = optional(bool)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

