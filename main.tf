resource "aws_oam_link" "this" {
  sink_identifier = var.sink_arn
  label_template  = var.account_label
  resource_types  = var.allowed_oam_resource_types
}
