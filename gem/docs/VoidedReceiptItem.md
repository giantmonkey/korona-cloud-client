# KoronaCloudClient::VoidedReceiptItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **indent** | **Integer** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::VoidedReceiptItem.new(
  account: null,
  indent: null,
  product: null,
  quantity: null,
  total: null
)
```

