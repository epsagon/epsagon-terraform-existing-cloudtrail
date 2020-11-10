resource "aws_cloudformation_stack" "epsagon" {
  name = "epsagon"

  template_url = "https://s3.amazonaws.com/epsagon/template_existing_cloudtrail.json"
  capabilities = ["CAPABILITY_NAMED_IAM"]

  parameters = {
    ExternalId         = "${var.epsagon_external_id}"
  }
}
