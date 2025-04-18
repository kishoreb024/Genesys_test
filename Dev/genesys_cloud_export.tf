resource "genesyscloud_tf_export" "export" {
  directory = "./"

  resource_types = [
    #"genesyscloud_architect_schedules"
	#"genesyscloud_routing_queue"
	#"genesyscloud_flow"
	"genesyscloud_architect_schedulegroups"
  ]
  ignore_cyclic_deps           = true
  split_files_by_resource      = true
  enable_dependency_resolution = true
  export_format = "hcl"
}