variable "name" {
  description = "(Deprecated from version 1.1.0) The specification of module name."
  type        = string
  default     = ""
}

#alicloud_amqp_instance
variable "instance_name" {
  description = "The specification of module name."
  type        = string
  default     = null
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
  default     = null
}

variable "renewal_duration" {
  description = "The number of automatic renewal cycles."
  type        = number
  default     = 0
}

variable "renewal_duration_unit" {
  description = "Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years."
  type        = string
  default     = null
}

variable "renewal_status" {
  description = "he renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. NotRenewal: no renewal."
  type        = string
  default     = null
}

variable "storage_size" {
  description = "Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28]."
  type        = string
  default     = null
}

#alicloud_amqp_virtual_host
variable "virtual_host_name" {
  description = "VirtualHostName."
  type        = string
  default     = null
}

#alicloud_amqp_queue
variable "queue_name" {
  description = "The name of the queue."
  type        = string
  default     = null
}

variable "auto_delete_state_queue" {
  description = "Specifies whether the Auto Delete attribute is configured."
  type        = bool
  default     = false
}

variable "auto_expire_state" {
  description = "The validity period after which the queue is automatically deleted."
  type        = string
  default     = null
}

variable "dead_letter_exchange" {
  description = "The dead-letter exchange. A dead-letter exchange is used to receive rejected messages. "
  type        = string
  default     = null
}

variable "dead_letter_routing_key" {
  description = "The dead letter routing key."
  type        = string
  default     = null
}

variable "exclusive_state" {
  description = "Specifies whether the queue is an exclusive queue."
  type        = bool
  default     = false
}

variable "max_length" {
  description = "The maximum number of messages that can be stored in the queue."
  type        = string
  default     = null
}

variable "maximum_priority" {
  description = "The highest priority supported by the queue. This parameter is set to a positive integer."
  type        = number
  default     = 0
}

variable "message_ttl" {
  description = "The message TTL of the queue."
  type        = string
  default     = null
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
  default     = null
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

variable "alternate_exchange" {
  description = "The alternate exchange. An alternate exchange is configured for an existing exchange. It is used to receive messages that fail to be routed to queues from the existing exchange."
  type        = string
  default     = null
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
