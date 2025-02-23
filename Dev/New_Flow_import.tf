resource "genesyscloud_flow" "Demo_Flow" {
  filepath          = "Kishore_Terraform_Demo_Template_v2-0.yaml"
  file_content_hash = filesha256("Kishore_Terraform_Demo_Template_v2-0.yaml")

  substitutions = {
    flow_name            = "LBG_TF_Test_Dev"
    default_language     = "en-us"
    greeting             = "Hello, Welcome to LBG"
  }
}