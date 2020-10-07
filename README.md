# Terraform_CHKP_AWS_May28_Demo
Example Policy creation with the Check Point Terraform Provider

Source your credentials for the SmartCenter or MDS using the example creds file. The Check Point Terraform provider will read them from the enviroment.  For Example

On unix/linux run:  source creds_MDS

To have the publish resource run on the apply, taint the publish resource before the apply is run. This will force the publish to be created on every apply. For Example run the following

terraform taint checkpoint_management_publish.publish; terraform apply
