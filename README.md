# Terraform_CHKP_AWS_May28_Demo
Example Policy creation with the Check Point Terraform Provider

Source your credentials for the SmartCenter or MDS using the example creds file. The Check Point Terraform provider will read them from the enviroment.  For Example

On unix/linux run:  source creds_MDS

The recommended way to publish the changes is to use the publish executable from the Check Point provider source code to publish the changes.  See https://registry.terraform.io/providers/CheckPointSW/checkpoint/latest/docs#publish for details.
