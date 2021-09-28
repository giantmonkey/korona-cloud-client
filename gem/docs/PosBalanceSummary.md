# KoronaCloudClient::PosBalanceSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **total** | [**PosBalanceTotal**](PosBalanceTotal.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosBalanceSummary.new(
  comment: null,
  payment_method: null,
  total: null
)
```

