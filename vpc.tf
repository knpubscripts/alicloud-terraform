resource "alicloud_vpc" "vpc" {
  vpc_name   = "kndemo-vpc"
  cidr_block = var.cidr_block
}

resource "alicloud_vswitch" "vswkndemo" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vswitch_cidr_block
  zone_id    = var.zone
}

resource "alicloud_vswitch" "vswkndemo2" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vswitch_cidr_block2
  zone_id    = var.zoneb
}

