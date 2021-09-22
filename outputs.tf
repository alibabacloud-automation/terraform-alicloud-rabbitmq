output "this_amqp_instance_id" {
  value = var.instance_id != "" ? var.instance_id : concat(alicloud_amqp_instance.default.*.id, [""])[0]
}

output "this_amqp_instance_name" {
  value = var.instance_id != "" ? var.instance_id : concat(alicloud_amqp_instance.default.*.instance_name, [""])[0]
}
