resource "genesyscloud_tf_export" "export" {
  directory = "./genesyscloud"

  resource_types = [
    #"genesyscloud_architect_schedules"
	#"genesyscloud_routing_queue"
	#"genesyscloud_flow"
	"genesyscloud_architect_schedules"
  ]
  ignore_cyclic_deps           = true
  split_files_by_resource      = true
  enable_dependency_resolution = true
  export_as_hcl = true
}