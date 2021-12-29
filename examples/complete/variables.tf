#alicloud_amqp_instance
variable "instance_name" {
  description = "The specification of module name."
  type        = string
  default     = "terraform_test"
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
  default     = false
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

#alicloud_amqp_exchange
variable "internal" {
  description = "The specification of the internal."
  type        = bool
  default     = false
}
