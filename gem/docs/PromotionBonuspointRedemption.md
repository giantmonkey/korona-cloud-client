# KoronaCloudClient::PromotionBonuspointRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fixed_discount** | [**PromotionBonuspointRedemptionFixedDiscount**](PromotionBonuspointRedemptionFixedDiscount.md) |  | [optional] |
| **percentage_discount** | [**PromotionBonuspointRedemptionPercentageDiscount**](PromotionBonuspointRedemptionPercentageDiscount.md) |  | [optional] |
| **tag_discount** | [**PromotionBonuspointRedemptionTagDiscount**](PromotionBonuspointRedemptionTagDiscount.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBonuspointRedemption.new(
  fixed_discount: null,
  percentage_discount: null,
  tag_discount: null,
  type: null
)
```

