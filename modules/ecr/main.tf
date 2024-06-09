resource "aws_ecr_repository" "interswitch-ecr" {
  name  = "interswitch-ecr"
}

data "aws_iam_policy_document" "interswitch-ecr" {
  statement {
    sid    = "new policy"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["637423239767"]
    }

    actions = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability",
      "ecr:PutImage",
      "ecr:InitiateLayerUpload",
      "ecr:UploadLayerPart",
      "ecr:CompleteLayerUpload",
      "ecr:DescribeRepositories",
      "ecr:GetRepositoryPolicy",
      "ecr:ListImages",
      "ecr:DeleteRepository",
      "ecr:BatchDeleteImage",
      "ecr:SetRepositoryPolicy",
      "ecr:DeleteRepositoryPolicy",
    ]
  }
}


resource "aws_ecr_repository_policy" "interswitch-ecr" {
  repository = aws_ecr_repository.interswitch-ecr.name
  policy = data.aws_iam_policy_document.interswitch-ecr.json
}