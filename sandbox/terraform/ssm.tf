resource "aws_ssm_parameter" "foo" {
  name  = "/accID" #degistirdim burayi
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}" #buraya account id gelecek. s3.tf icinde bulunan ${data.aws_caller_identity.current.account_id} yi yapistiracagiz.
}