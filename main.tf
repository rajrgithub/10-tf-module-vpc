#resource "aws_vpc" "main" {
#  cidr_block = var.cidr_block
#  tags = local.common_tags
#}

# To display tag name
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = merge(
    local.common_tags,
    { Name = "${var.env}-vpc" }
  )
}