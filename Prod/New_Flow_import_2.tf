resource "genesyscloud_flow" "Test_Flow" {
  filepath          = "Kishore_Terraform_Demo_Template_v2-0.yaml"
  file_content_hash = filesha256("Kishore_Terraform_Demo_Template_v2-0.yaml")

  substitutions = {
    flow_name            = "LBG_TF_Test_Prod_v2"
    default_language     = "en-us"
    greeting             = "Hello, Welcome to LBG"
  }
}