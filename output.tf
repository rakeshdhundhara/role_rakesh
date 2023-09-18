output "fatched_info_form_aws" {
    value = ["${aws_iam_role.rakesh607_role.*.id}"]

  
}