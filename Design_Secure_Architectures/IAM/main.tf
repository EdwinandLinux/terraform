provider "aws" {
    region = "us-east-1"
  
}

# Create IAM Group
resource "aws_iam_group" "users_group" {
    name = "security"
  
}

# Attach IAM Policy to Group
resource "aws_iam_group_policy_attachment" "users_group_attach" {
    group = aws_iam_group.users_group.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

# Create IAM Users
resource "aws_iam_user" "users" {
    for_each = toset(var.iam_user_names)
    name = each.key
}

# Add Users to IAM Group
resource "aws_iam_group_membership" "users_membership" {

 name= users_group
 users = [for user in aws_iam_user.users:user.name]
 group=aws_iam_group.users_group

}