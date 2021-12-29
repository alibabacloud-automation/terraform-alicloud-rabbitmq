variable "name" {
  description = "(Deprecated from version 1.1.0) The specification of module name."
  type        = string
  default     = ""
}

#alicloud_amqp_instance
variable "instance_name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "professional"
}

variable "max_tps" {
  description = "The specification of the peak TPS traffic."
  type        = number
  default     = 1000
}

variable "queue_capacity" {
  description = "The specification of the queue capacity."
  type        = number
  default     = 50
}

variable "support_eip" {
  description = "The specification of support EIP."
  type        = bool
  default     = true
}

variable "max_eip_tps" {
  description = "The specification of the max eip tps."
  type        = number
  default     = 128
}

variable "payment_type" {
  description = "The specification of the payment type."
  type        = string
  default     = "Subscription"
}

variable "period" {
  description = "The specification of the period."
  type        = number
  default     = 1
}

variable "modify_type" {
  description = "The modify type.It is required when updating other attributes."
  type        = string
  default     = "Downgrade"
}

variable "create" {
  description = "Whether to create instance. If false, you can specify an existing instance by setting 'instance_id'."
  type        = bool
  default     = true
}

variable "instance_id" {
  description = "The instance_id used to RabbitMQ. If 'create' is true, the 'instance ID' is invalid.If 'create' is false,you must specify an existing instance by setting 'instance_id'."
  type        = string
  default     = ""
}

#alicloud_amqp_virtual_host
variable "virtual_host_name" {
  description = "VirtualHostName."
  type        = string
  default     = ""
}

#alicloud_amqp_queue
variable "queue_name" {
  description = "The name of the queue."
  type        = string
  default     = ""
}

#alicloud_amqp_exchange
variable "auto_delete_state" {
  description = "The specification of the auto delete state."
  type        = bool
  default     = false
}

variable "exchange_name" {
  description = "The name of the exchange."
  type        = string
  default     = ""
}

variable "exchange_type" {
  description = "The specification of the exchange type."
  type        = string
  default     = "HEADERS"
}

variable "internal" {
  description = "The specification of the internal."
  type        = bool
  default     = false
}

#alicloud_amqp_binding
variable "argument" {
  description = "The specification of the argument."
  type        = string
  default     = "x-match:all"
}

variable "binding_type" {
  description = "The specification of the binding type."
  type        = string
  default     = "QUEUE"
}