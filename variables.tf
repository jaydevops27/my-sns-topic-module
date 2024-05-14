variable "aws_region" {
  description = "The AWS region where the SNS topic will be created."
  type        = string
}

variable "sns_topic_name" {
  description = "The name for the SNS topic."
  type        = string
}

variable "sns_topic_endpoint" {
  description = "The endpoint that receives notifications from this SNS topic."
  type        = string
}

variable "sns_topic_protocol" {
  description = "The protocol for the endpoint."
  type        = string
}

variable "sns_delivery_policy" {
  description = "The delivery policy for the SNS topic."
  type        = string
  default     = "arn:aws:sns:us-east-1:123456789012:default-delivery-policy"
}

variable "application_succe" {
  description = "The success application to receive messages."
  type        = string
  default     = "arn:aws:sns:us-east-1:123456789012:default-success-application"
}

variable "application_fail" {
  description = "The failure application to receive messages."
  type        = string
  default     = "arn:aws:sns:us-east-1:123456789012:default-failure-application"
}