# KoronaCloudClient::ProductSubproduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prices** | [**Array&lt;ProductPrice&gt;**](ProductPrice.md) |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductSubproduct.new(
  prices: null,
  product: null,
  quantity: null,
  tag: null,
  type: null
)
```

