# KoronaCloudClient::StoreOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **supplier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **source_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StoreOrderItem.new(
  product: null,
  quantity: null,
  supplier: null,
  source_organizational_unit: null
)
```

