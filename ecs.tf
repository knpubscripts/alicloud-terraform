# resource "alicloud_instance" "web" {
#   count                = 1
#   instance_name        = "${var.short_name}-${var.role}"
#   password             = var.ecs_password
#   availability_zone    = var.zonea
#   image_id             = var.image_id
#   instance_type        = "ecs.n4.small"
#   system_disk_category = "cloud_efficiency"
#   security_groups      = ["${alicloud_security_group.sg.id}"]
#   vswitch_id           = alicloud_vswitch.vsw1.id
#   depends_on           = [alicloud_db_instance.demords]
# }
