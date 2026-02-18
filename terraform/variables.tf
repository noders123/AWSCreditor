variable "region" {
  type    = string
  default = "us-east-1"
}

variable "name_prefix" {
  type    = string
  default = "aws-credits-lab"
}

variable "budget_email" {
  type        = string
  description = "Email for AWS Budgets notifications"
}

variable "budget_limit_usd" {
  type    = number
  default = 10
}

variable "ec2_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "rds_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "rds_engine_version" {
  type    = string
  default = "16.3"
}

variable "rds_db_name" {
  type    = string
  default = "appdb"
}

variable "rds_username" {
  type    = string
  default = "appuser"
}

# Bedrock model id varies by region/account access.
# You'll set it after you check available models.
variable "bedrock_model_id" {
  type        = string
  description = "Example: anthropic.claude-3-haiku-20240307-v1:0 (depends on region/access)"
  default     = ""
}
