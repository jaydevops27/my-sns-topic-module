provider "aws" {
  region = var.aws_region
}

resource "aws_sns_topic" "sns_topic" {
  name              = var.sns_topic_name
  display_name      = var.sns_topic_name
  policy            = data.aws_iam_policy_document.sns_topic.json
  delivery_policy   = var.sns_delivery_policy
  application_succe = var.application_succe
  application_fail  = var.application_fail
  endpoint          = var.sns_topic_endpoint
  protocol          = var.sns_topic_protocol
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