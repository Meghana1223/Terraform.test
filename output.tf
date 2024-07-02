output "webserver_publicIP_address" {
    value = aws_instance.server1.public_ip
}

output "webserver_privateIP_address" {
    value = aws_instance.server1.private_ip
}

output "webserver_instance_status" {
    value = aws_instance.server1.instance_state
}

output "docker_instance_status" {
    value = aws_instance.server2.instance_state
}


output "docker_publicIP_address" {
    value = aws_instance.server2.public_ip
}

output "docker_privateIP_address" {
    value = aws_instance.server2.private_ip
}


output "sg_id" {
    value = aws_security_group.terraform_sg.id
}