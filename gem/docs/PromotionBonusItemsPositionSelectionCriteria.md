# KoronaCloudClient::PromotionBonusItemsPositionSelectionCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_range** | [**PromotionBonusItemsPositionSelectionCriteriaMinMaxRange**](PromotionBonusItemsPositionSelectionCriteriaMinMaxRange.md) |  | [optional] |
| **max_iterations** | **Integer** |  | [optional] |
| **price_range** | [**PromotionBonusItemsPositionSelectionCriteriaMinMaxRange**](PromotionBonusItemsPositionSelectionCriteriaMinMaxRange.md) |  | [optional] |
| **selections** | [**Array&lt;PromotionBonusItemsPositionSelection&gt;**](PromotionBonusItemsPositionSelection.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBonusItemsPositionSelectionCriteria.new(
  amount_range: null,
  max_iterations: null,
  price_range: null,
  selections: null
)
```

