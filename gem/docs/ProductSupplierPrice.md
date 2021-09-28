# KoronaCloudClient::ProductSupplierPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supplier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **order_code** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **container_size** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductSupplierPrice.new(
  supplier: null,
  order_code: null,
  value: null,
  container_size: null,
  description: null
)
```

