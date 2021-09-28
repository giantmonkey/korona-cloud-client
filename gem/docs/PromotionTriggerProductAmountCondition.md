# KoronaCloudClient::PromotionTriggerProductAmountCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **equality_condition** | **String** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **value** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionTriggerProductAmountCondition.new(
  equality_condition: null,
  product: null,
  value: null
)
```

