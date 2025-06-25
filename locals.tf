locals {
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = "true"
  }

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
      "Name = ${var.proejct}-${var.environment}-${var.sg_name}"
    }
  )
}