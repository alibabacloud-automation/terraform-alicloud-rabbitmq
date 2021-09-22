resource "alicloud_amqp_instance" "default" {
  count                 = var.instance_id != "" ? 0 : var.create ? 1 : 0
  instance_name         = var.name
  instance_type         = var.instance_type
  max_tps               = var.max_tps
  queue_capacity        = var.queue_capacity
  support_eip           = var.support_eip
  max_eip_tps           = var.max_eip_tps
  payment_type          = var.payment_type
  period                = var.period
}

resource "alicloud_amqp_virtual_host" "default" {
  instance_id       = var.instance_id != "" ? var.instance_id : concat(alicloud_amqp_instance.default.*.id, [""])[0]
  virtual_host_name = var.name
}

resource "alicloud_amqp_queue" "example" {
  instance_id       = var.instance_id != "" ? var.instance_id : concat(alicloud_amqp_instance.default.*.id, [""])[0]
  queue_name        = var.name
  virtual_host_name = alicloud_amqp_virtual_host.default.virtual_host_name
}
