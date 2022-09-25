# data "aws_s3_bucket" "my_objects" {
#   bucket = "terraform-bucket-fstate"
# }

# resource "aws_lambda_permission" "allow_bucket" {
#   statement_id  = "AllowExecutionFromS3Bucket"
#   action        = "lambda:InvokeFunction"
#   function_name = module.lambda_connect.lambda.arn
#   principal     = "s3.amazonaws.com"
#   source_arn    = data.aws_s3_bucket.my_objects.arn
# }

# resource "aws_s3_bucket_notification" "bucket_notification" {
#   bucket = data.aws_s3_bucket.my_objects.id

#   lambda_function {
#     lambda_function_arn = module.lambda_connect.lambda.arn
#     events              = ["s3:ObjectCreated:*"]
#   }
# }