provider "aws" {
  region = var.aws_region
}

resource "aws_sns_topic" "sns_topic" {
  name             = var.sns_topic_name
  display_name     = var.sns_topic_display_name
  policy           = var.sns_topic_policy
  delivery_policy  = var.sns_topic_delivery_policy
  kms_master_key_id = var.sns_topic_kms_master_key_id
  fifo_topic       = var.sns_topic_fifo_topic

  endpoint = var.sns_topic_endpoint
  protocol = var.sns_topic_protocol
}

output "sns_topic_arn" {
  description = "The ARN of the created SNS topic."
  value       = aws_sns_topic.sns_topic.arn
}
