output "opsi_chargeback_plans_lookup_id" {
  description = "Map of id values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opsi_chargeback_plans_lookup_chargeback_plan_collection" {
  description = "Map of chargeback_plan_collection values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no chargeback_plan_collection are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.chargeback_plan_collection if v.chargeback_plan_collection != null && length(v.chargeback_plan_collection) > 0 }
}
output "opsi_chargeback_plans_lookup_chargebackplan_id" {
  description = "Map of chargebackplan_id values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no chargebackplan_id are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.chargebackplan_id if v.chargebackplan_id != null && length(v.chargebackplan_id) > 0 }
}
output "opsi_chargeback_plans_lookup_compartment_id" {
  description = "Map of compartment_id values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "opsi_chargeback_plans_lookup_compartment_id_in_subtree" {
  description = "Map of compartment_id_in_subtree values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.compartment_id_in_subtree if v.compartment_id_in_subtree != null }
}
output "opsi_chargeback_plans_lookup_filter" {
  description = "Map of filter values across all opsi_chargeback_plans_lookup, keyed the same as var.opsi_chargeback_plans_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_opsi_chargeback_plans.opsi_chargeback_plans_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

