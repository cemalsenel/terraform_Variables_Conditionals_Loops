output "tf_example_public_ip" {
  value = aws_instance.tf-ec2.public_ip
}

output "tf_example_s3_meta" {
  # value = aws_s3_bucket.tf-s3.region
  # value = aws_s3_bucket.tf-s3.*.region
  value = {for user in var.users : user => aws_s3_bucket.tf-s3[user].arn}
  value = values(aws_s3_bucket.tf-s3)[*].arn

}

output "tf_example_private_ip" {
  value = aws_instance.tf-ec2.private_ip
}

output "upercase_users" {
  value = [for user in var.users : upper(user) if length(user) > 6]
}
