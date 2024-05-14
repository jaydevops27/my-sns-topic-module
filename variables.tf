variable "aws_region" {
  description = "The AWS region where the SNS topic will be created."
  type        = string
}

variable "sns_topic_name" {
  description = "The name for the SNS topic."
  type        = string
}

variable "sns_topic_display_name" {
  description = "The display name for the SNS topic."
  type        = string
  default     = null
}

variable "sns_topic_policy" {
  description = "The policy for the SNS topic."
  type        = string
  default     = null
}

variable "sns_topic_delivery_policy" {
  description = "The delivery policy for the SNS topic."
  type        = string
  default     = null
}

variable "sns_topic_kms_master_key_id" {
  description = "The ID of the AWS Key Management Service (KMS) master key to use for SSE-KMS encryption."
  type        = string
  default     = null
}

variable "sns_topic_fifo_topic" {
  description = "Whether the SNS topic is a FIFO topic."
  type        = bool
  default     = false
}

variable "sns_topic_endpoint" {
  description = "The endpoint that receives notifications from this SNS topic."
  type        = string
  default     = null
}

variable "sns_topic_protocol" {
  description = "The protocol for the endpoint."
  type        = string
  default     = null
}
