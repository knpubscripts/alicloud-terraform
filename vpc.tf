resource "alicloud_vpc" "vpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block
}

resource "alicloud_vswitch" "vsw1" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vswitch_cidr_block
  zone_id    = var.zonea
}

resource "alicloud_vswitch" "vsw2" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vswitch_cidr_block2
  zone_id    = var.zoneb
}

# resource "alicloud_key_pair" "ecs_keys" {
#   key_pair_name = var.key_pair_name
#   key_file      = var.key_file
# }
