# KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_range** | [**PromotionBenefitExtendedDiscountPositionSelectionCriteriaMinMaxRange**](PromotionBenefitExtendedDiscountPositionSelectionCriteriaMinMaxRange.md) |  | [optional] |
| **max_iterations** | **Integer** |  | [optional] |
| **price_range** | [**PromotionBenefitExtendedDiscountPositionSelectionCriteriaMinMaxRange**](PromotionBenefitExtendedDiscountPositionSelectionCriteriaMinMaxRange.md) |  | [optional] |
| **selections** | [**Array&lt;PromotionBenefitExtendedDiscountPositionSelection&gt;**](PromotionBenefitExtendedDiscountPositionSelection.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCriteria.new(
  amount_range: null,
  max_iterations: null,
  price_range: null,
  selections: null
)
```

