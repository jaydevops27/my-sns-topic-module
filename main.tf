provider "aws" {
  region = var.aws_region
}

resource "aws_sns_topic" "sns_topic" {
  name         = var.sns_topic_name
  display_name = var.sns_topic_name
}

data "aws_iam_policy_document" "sns_topic" {
  statement {
    actions   = ["sns:Publish"]
    resources = [aws_sns_topic.sns_topic.arn]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_sns_topic_subscription" "sns_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = var.sns_subscription_protocol
  endpoint  = var.sns_subscription_endpoint
}

output "sns_topic_arn" {
  description = "The ARN of the created SNS topic."
  value       = aws_sns_topic.sns_topic.arn
}

output "sns_topic_policy_json" {
  description = "The JSON representation of the IAM policy document."
  value       = data.aws_iam_policy_document.sns_topic.json
}