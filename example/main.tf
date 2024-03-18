module "llrt_layer" {
  source  = "barneyparker/llrt-layer/aws"
  version = "1.0.0"

  name_prefix = "llrt"
  release     = "latest"
  arch        = "arm64"
}
