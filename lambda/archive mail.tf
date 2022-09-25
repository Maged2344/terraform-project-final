data "archive_file" "mail" {
  type        = "zip"
  source_file = "lambda/mail.js"
  output_path = "lambda/outputs/mail.zip"
}