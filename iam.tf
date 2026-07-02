resource "aws_iam_user" "dev_user" {
  name          = "dev-user"
  force_destroy = true
}

resource "aws_iam_user_policy_attachment" "dev_user_attach" {
  user       = aws_iam_user.dev_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_login_profile" "dev_user_console" {
  user                    = aws_iam_user.dev_user.name
  password_length         = 16
  password_reset_required = true
}

output "iam_username" {
  value = aws_iam_user.dev_user.name
}

output "iam_console_password" {
  value     = aws_iam_user_login_profile.dev_user_console.password
  sensitive = true
}
