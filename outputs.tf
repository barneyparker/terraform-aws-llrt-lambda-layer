output "arch" {
  value = var.arch
}

output "release" {
  value = var.release
}

output "name" {
  value = aws_lambda_layer_version.llrt.layer_name
}

output "arn" {
  value = aws_lambda_layer_version.llrt.arn
}

output "runtime" {
  value = "provided.al2023"
}
