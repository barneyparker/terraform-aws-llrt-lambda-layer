locals {
  url = var.release == "latest" ? "https://github.com/awslabs/llrt/releases/latest/download/llrt-lambda-${var.arch}.zip" : "https://github.com/awslabs/llrt/releases/download/${var.release}/llrt-lambda-${var.arch}.zip"
}

resource "terraform_data" "llrt" {
  provisioner "local-exec" {
    command = "curl -L -o llrt.zip ${local.url}"
  }

  triggers_replace = [
    fileexists("${path.module}/llrt.zip") ? "exists" : timestamp(),
    var.release,
    var.arch,
  ]
  input = {
    source_path = "${path.module}/llrt.zip"
  }
}

resource "aws_lambda_layer_version" "llrt" {
  filename                 = terraform_data.llrt.output.source_path
  layer_name               = "${var.name_prefix}-${var.release}-${var.arch}"
  compatible_runtimes      = ["provided.al2023"]
  compatible_architectures = [var.arch]
}
