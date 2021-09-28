# KoronaCloudClient::StockAdjustmentItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **reason** | [**StockAdjustmentItemReason**](StockAdjustmentItemReason.md) |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockAdjustmentItem.new(
  amount: null,
  product: null,
  reason: null,
  revision: null
)
```

