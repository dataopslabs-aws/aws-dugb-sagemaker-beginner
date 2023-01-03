data "aws_iam_policy_document" "sm_domain" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["sagemaker.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "sagemaker_domain_execution_role" {
  name = "aws-dugb-sagemaker-domain-execution-iam-role"
  path = "/"
  assume_role_policy = data.aws_iam_policy_document.sm_domain.json
}

resource "aws_iam_role_policy_attachment" "s3-fullaccess-role-policy-attach" {
  role       = "${aws_iam_role.sagemaker_domain_execution_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "sagemaker-fullaccess-role-policy-attach" {
  role       = "${aws_iam_role.sagemaker_domain_execution_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
}

resource "aws_iam_role_policy_attachment" "sagemaker-canvas-role-policy-attach" {
  role       = "${aws_iam_role.sagemaker_domain_execution_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess"
}
resource "aws_sagemaker_domain" "aws_dugb_sagemaker_domain" {
  domain_name = "aws-datauser-group-bangalore-sagemaker"
  auth_mode   = "IAM"
  vpc_id = var.sm_vpc_id
  subnet_ids = var.sm_subnets
  default_user_settings {
    execution_role = aws_iam_role.sagemaker_domain_execution_role.arn
  }
  default_space_settings {
    execution_role = aws_iam_role.sagemaker_domain_execution_role.arn
  }
}

resource "aws_sagemaker_user_profile" "aws_dugb_week1" {
  domain_id         = aws_sagemaker_domain.aws_dugb_sagemaker_domain.id
  user_profile_name = "aws-dugb-mlops-week1"
  user_settings {
    execution_role = aws_iam_role.sagemaker_domain_execution_role.arn
  }
}

resource "aws_sagemaker_app" "week1_sagemaker_pipeline" {
  domain_id         = aws_sagemaker_domain.aws_dugb_sagemaker_domain.id
  user_profile_name = aws_sagemaker_user_profile.aws_dugb_week1.user_profile_name
  app_name          = "week1-aws-dugb-sagemaker-pipeline"
  app_type          = "JupyterServer"
}