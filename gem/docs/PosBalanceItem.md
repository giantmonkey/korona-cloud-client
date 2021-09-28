# KoronaCloudClient::PosBalanceItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_denomination_type** | **String** |  | [optional] |
| **total** | **Float** |  | [optional] |
| **nominal_value** | **Float** |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosBalanceItem.new(
  currency_denomination_type: null,
  total: null,
  nominal_value: null,
  payment_method: null,
  quantity: null
)
```

