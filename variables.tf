variable "aws_region" {
  description = "The AWS region where the SNS topic will be created."
  type        = string
}

variable "sns_topic_name" {
  description = "The name for the SNS topic."
  type        = string
}