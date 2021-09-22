Terraform module which creates a RabbitMQ on Alibaba Cloud

terraform-alicloud-rabbitmq
=====================================================================

English | [简体中文](README-CN.md)

This module is used to create a RabbitMQ under Alibaba Cloud.

These types of resources are supported:

* [alicloud_rabbitmq](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/amqp_instance)

## Usage

```hcl
module "rabbitmq" {
  count          = true
  source         = "terraform-alicloud-modules/rabbitmq/alicloud"
  instance_name  = "tf-rabbitmq"
  instance_type  = "professional"
  max_tps        = 1000
  queue_capacity = 50
  support_eip    = true
  payment_type   = "Subscription"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.128.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.128.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
