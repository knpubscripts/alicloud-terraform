resource "alicloud_cs_managed_kubernetes" "k8s" {
  name                 = var.k8s_name
  cluster_spec         = var.cluster_spec
  version              = var.k8s_version
  depends_on           = [alicloud_vpc.vpc, alicloud_vswitch.vsw1, alicloud_vswitch.vsw1]
  worker_vswitch_ids   = [alicloud_vswitch.vsw1.id, alicloud_vswitch.vsw2.id]
  new_nat_gateway      = true
  node_cidr_mask       = var.node_cidr_mask
  proxy_mode           = var.proxy_mode
  pod_cidr             = var.pod_cidr
  service_cidr         = var.service_cidr
  slb_internet_enabled = "true"
}


resource "alicloud_cs_kubernetes_node_pool" "nodepool" {
  name                  = "${alicloud_cs_managed_kubernetes.k8s}-node-pool"
  cluster_id            = alicloud_cs_managed_kubernetes.k8s.id
  depends_on            = [alicloud_vpc.vpc, alicloud_vswitch.vsw1, alicloud_vswitch.vsw1, alicloud_cs_managed_kubernetes.k8s]
  vswitch_ids           = [alicloud_vswitch.vsw1.id, alicloud_vswitch.vsw2.id]
  instance_types        = var.worker_instance_types
  instance_charge_type  = var.worker_instance_charge_type
  system_disk_category  = var.system_disk_category
  system_disk_size      = var.system_disk_size
  password              = var.ecs_password
  install_cloud_monitor = "true"
  scaling_config {
    min_size = var.scaling_min
    max_size = var.scaling_max
  }
  runtime_name    = var.container_runtime
  runtime_version = var.container_version
}
