provider "alicloud" {
  region = "cn-shanghai"
}

module "example" {
  source = "../.."

  #alicloud_amqp_instance
  create         = true
  instance_name  = var.instance_name
  instance_type  = "professional"
  max_tps        = var.max_tps
  queue_capacity = var.queue_capacity
  support_eip    = var.support_eip
  max_eip_tps    = var.max_eip_tps
  payment_type   = var.payment_type
  period         = var.period
  modify_type    = var.modify_type

  #alicloud_amqp_virtual_host
  virtual_host_name = "virtual_host_name"

  #alicloud_amqp_queue
  queue_name              = "queue_name"
  auto_delete_state_queue = "true"
  auto_expire_state       = "10000"
  max_length              = "100"
  maximum_priority        = "10"
  message_ttl             = "100"

  #alicloud_amqp_exchange
  auto_delete_state = false
  exchange_name     = "exchange_name"
  exchange_type     = "HEADERS"
  internal          = var.internal

  #alicloud_amqp_binding
  argument     = "x-match:all"
  binding_type = "QUEUE"
}