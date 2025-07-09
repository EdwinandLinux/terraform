output "group_name" {
    value = aws_iam_group.users_group.name
  
}

output "iam_user_list" {
    value = [for user in aws_aws_iam_user.users:user.var.iam_user_name]
  
}