# resource "alicloud_db_account" "demo_account" {
#   db_instance_id   = alicloud_db_instance.demords.id
#   account_name     = var.database_user_name
#   account_password = var.database_user_password
# }

# resource "alicloud_db_database" "demodb" {
#   count       = 1
#   instance_id = alicloud_db_instance.demords.id
#   name        = var.database_name
#   description = "terraform kn demo"
# }

# resource "alicloud_db_instance" "demords" {
#   engine           = "MySQL"
#   engine_version   = "8.0"
#   instance_type    = "rds.mysql.t1.small"
#   instance_storage = "20"
#   vswitch_id       = alicloud_vswitch.vsw1.id
#   security_ips     = [var.db_security_ips]
# }

# resource "alicloud_db_account_privilege" "privilege" {
#   count        = 1
#   instance_id  = alicloud_db_instance.demords.id
#   account_name = alicloud_db_account.demo_account.name
#   privilege    = "ReadWrite"
#   db_names     = [alicloud_db_database.demodb[count.index].name]
# }

