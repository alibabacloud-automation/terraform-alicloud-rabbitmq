resource "alicloud_amqp_instance" "default" {
  count                  = var.create ? 1 : 0
  instance_name          = var.instance_name != "" ? var.instance_name : var.name
  instance_type          = var.instance_type
  max_tps                = var.max_tps
  queue_capacity         = var.queue_capacity
  support_eip            = var.support_eip
  max_eip_tps            = var.max_eip_tps
  payment_type           = var.payment_type
  serverless_charge_type = var.serverless_charge_type
  period                 = var.period
  renewal_duration       = var.renewal_duration
  renewal_duration_unit  = var.renewal_duration_unit
  renewal_status         = var.renewal_status
  modify_type            = var.modify_type
  storage_size           = var.storage_size
}

resource "alicloud_amqp_virtual_host" "default" {
  instance_id       = local.amqp_instance_id
  virtual_host_name = var.virtual_host_name
}

resource "alicloud_amqp_queue" "default" {
  instance_id             = local.amqp_instance_id
  queue_name              = var.queue_name
  virtual_host_name       = alicloud_amqp_virtual_host.default.virtual_host_name
  auto_delete_state       = var.auto_delete_state_queue
  auto_expire_state       = var.auto_expire_state
  dead_letter_exchange    = var.dead_letter_exchange
  dead_letter_routing_key = var.dead_letter_routing_key
  exclusive_state         = var.exclusive_state
  max_length              = var.max_length
  maximum_priority        = var.maximum_priority
  message_ttl             = var.message_ttl
}

resource "alicloud_amqp_exchange" "default" {
  auto_delete_state  = var.auto_delete_state
  exchange_name      = var.exchange_name
  exchange_type      = var.exchange_type
  instance_id        = alicloud_amqp_virtual_host.default.instance_id
  internal           = var.internal
  virtual_host_name  = alicloud_amqp_virtual_host.default.virtual_host_name
  alternate_exchange = var.alternate_exchange
}

resource "alicloud_amqp_binding" "default" {
  argument          = var.argument
  binding_key       = alicloud_amqp_queue.default.queue_name
  binding_type      = var.binding_type
  destination_name  = alicloud_amqp_queue.default.queue_name
  instance_id       = alicloud_amqp_exchange.default.instance_id
  source_exchange   = alicloud_amqp_exchange.default.exchange_name
  virtual_host_name = alicloud_amqp_exchange.default.virtual_host_name
}