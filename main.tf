provider "aws" {
  region = var.aws_region
}

resource "aws_sns_topic" "sns_topic" {
  name         = var.sns_topic_name
  display_name = var.sns_topic_name
}

output "sns_topic_arn" {
  description = "The ARN of the created SNS topic."
  value       = aws_sns_topic.sns_topic.arn
}