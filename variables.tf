variable "allowed_oam_resource_types" {
  description = "Allowed Metric Resource types that will be allowed to send Metric and Log data to the monitoring account"
  type        = list(string)
  default = [
    "AWS::CloudWatch::Metric",
    "AWS::ApplicationInsights::Application",
    "AWS::Logs::LogGroup",
    "AWS::XRay::Trace",
  ]
}
variable "account_label" {
  description = "Account labels to create connection. Provide either $AccountName Or $AccountEmail or $AccountEmailNoDomain"
  type        = string
  default     = "$AccountName"
  validation {
    condition     = can(regex("[$]AccountName|[$]AccountEmail|[$]AccountEmailNoDomain", var.account_label))
    error_message = "Account label should contain either $AccountName or $AccountEmail or $AccountEmailNoDomain"
  }
}
variable "sink_arn" {
  description = "The sink identifier for the monitoring account. I.e. arn:aws:oam:AWS_REGION:AWS_ACCOUNT:sink/ID"
  type        = string
}
