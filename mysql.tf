# resource "alicloud_db_account" "kndemo_account" {
#   db_instance_id   = alicloud_db_instance.kndemo_rds.id
#   account_name     = var.database_user_name
#   account_password = var.database_user_password
# }

# resource "alicloud_db_database" "kndemo_db" {
#   count       = 1
#   instance_id = alicloud_db_instance.kndemo_rds.id
#   name        = var.database_name
#   description = "terraform kn demo"
# }

# resource "alicloud_db_instance" "kndemo_rds" {
#   engine           = "MySQL"
#   engine_version   = "8.0"
#   instance_type    = "rds.mysql.t1.small"
#   instance_storage = "20"
#   vswitch_id       = alicloud_vswitch.vswkndemo.id
#   security_ips     = [var.db_security_ips]
# }

# resource "alicloud_db_account_privilege" "privilege" {
#   count        = 1
#   instance_id  = alicloud_db_instance.kndemo_rds.id
#   account_name = alicloud_db_account.kndemo_account.name
#   privilege    = "ReadWrite"
#   db_names     = [alicloud_db_database.kndemo_db[count.index].name]
# }

