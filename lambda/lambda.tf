resource "aws_lambda_function" "test_lambda" {
  filename      = "lambda/outputs/mail.zip"
  function_name = "mail"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "mail.handler"
  runtime       = "nodejs12.x"
}
resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"
  assume_role_policy = "${file("lambda/assume_role_policy.json")}"
}

resource "aws_iam_role_policy" "lambda_policy" {
  name   = "lambda_policy"
  role   = aws_iam_role.iam_for_lambda.id
  policy = "${file("lambda/policy.json")}"
}

