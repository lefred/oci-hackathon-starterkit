output "webserver_public_ip" {
  value = module.webserver.public_ip
}

output "heatwave_private_ip" {
  value = module.heatwave.private_ip
}
output "ssh_private_key" {
  value = local.private_key_to_show
  sensitive = true
}
