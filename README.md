# terraform-aws-oam-link
A terraform module which can be used to create a Observability Access Manager link

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~>5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_oam_link.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sink_arn"></a> [sink\_arn](#input\_sink\_arn) | The sink identifier for the monitoring account. I.e. arn:aws:oam:AWS\_REGION:AWS\_ACCOUNT:sink/ID | `string` | n/a | yes |
| <a name="input_account_label"></a> [account\_label](#input\_account\_label) | Account labels to create connection. Provide either $AccountName Or $AccountEmail or $AccountEmailNoDomain | `string` | `"$AccountName"` | no |
| <a name="input_allowed_oam_resource_types"></a> [allowed\_oam\_resource\_types](#input\_allowed\_oam\_resource\_types) | Allowed Metric Resource types that will be allowed to send Metric and Log data to the monitoring account | `list(string)` | <pre>[<br>  "AWS::CloudWatch::Metric",<br>  "AWS::ApplicationInsights::Application",<br>  "AWS::Logs::LogGroup",<br>  "AWS::XRay::Trace"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_link_id"></a> [link\_id](#output\_link\_id) | The link identifier for the monitoring account |
<!-- END_TF_DOCS -->
