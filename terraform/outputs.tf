output "ec2_instance_id" {
  value = aws_instance.demo.id
}

output "lambda_api_url" {
  value = aws_apigatewayv2_api.http_api.api_endpoint
}

output "rds_endpoint" {
  value = aws_db_instance.postgres.address
}

output "budget_name" {
  value = aws_budgets_budget.monthly_cost.name
}

output "bedrock_one_time_cli_example" {
  value = <<-EOT
    # 1) List models:
    aws bedrock list-foundation-models --region ${var.region}

    # 2) Invoke a model once (replace MODEL_ID and prompt):
    aws bedrock-runtime invoke-model \
      --region ${var.region} \
      --model-id "<MODEL_ID>" \
      --content-type "application/json" \
      --accept "application/json" \
      --body '{"inputText":"Hello from Terraform-created lab!"}' \
      /tmp/bedrock-output.json
  EOT
}
