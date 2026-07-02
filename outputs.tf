output "s3_bucket_name" {
  value = aws_s3_bucket.project_bucket.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}
