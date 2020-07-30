output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}
output "public_subnets" {
  value = ["${aws_subnet.subnet_public.id}"]
}
output "public_route_table_ids" {
  value = ["${aws_route_table.rtb_public.id}"]
}
output "public_instance_ips" {
  value = "${formatlist("%v", aws_instance.server.*.public_ip)}"
}

output "private_instance_ips" {
  value = "${formatlist("%v", aws_instance.server.*.private_ip)}"
}
