# Terraform AWS LLRT Layer

This module creates an LLRT Lambda layer which can then be used with Lambda functions

## Usage

```hcl
module "llrt" {
  source  = "barneyparker/llrt-layer/aws"
  version = "1.0.0"

  name_prefix = "llrt"
  release     = "latest"
  arch        = "arm64"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| release | The release of the LLRT to use | `string` | n/a | yes |
| arch | The architecture of the LLRT to use | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the LLRT layer |
| name | The name of the LLRT layer |
| release | The version of the LLRT layer |
| arch | The architecture of the LLRT layer |
| runtime | The runtime the LLRT layer is compatible with |
