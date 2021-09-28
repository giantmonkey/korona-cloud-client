# KoronaCloudClient::PromotionBonuspointCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bonuspoints** | **Integer** |  | [optional] |
| **layer** | [**PromotionLayer**](PromotionLayer.md) |  | [optional] |
| **partial_revenue_for_bonuspoints** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBonuspointCreation.new(
  bonuspoints: null,
  layer: null,
  partial_revenue_for_bonuspoints: null,
  type: null
)
```

