locals {
  amqp_instance_id = var.create ? alicloud_amqp_instance.default[0].id : var.instance_id
}
