data "oci_opsi_chargeback_plans" "opsi_chargeback_plans_lookup" {
  for_each = var.opsi_chargeback_plans_lookup

  chargebackplan_id         = each.value.chargebackplan_id
  compartment_id            = each.value.compartment_id
  compartment_id_in_subtree = each.value.compartment_id_in_subtree

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

