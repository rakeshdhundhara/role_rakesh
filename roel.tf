data "aws_iam_policy_document" "rakesh607_policy" {
  statement {
    actions   = [var.action]
    effect    = var.effect
    resources = ["*"]  
      type        = "Service"
      identifiers = [var.service]
    }
  }
}
resource "aws_iam_role" "rakesh607_role" {
  count = length(var.role_name)
  name =var.role_name[count.index]

  assume_role_policy = data.aws_iam_policy_document.rakesh607_policy.json
}