# KoronaCloudClient::PromotionCouponValidity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_interval** | [**DateInterval**](DateInterval.md) |  | [optional] |
| **days_after_purchase_interval** | [**PromotionCouponValidityDaysAfterPurchaseInterval**](PromotionCouponValidityDaysAfterPurchaseInterval.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionCouponValidity.new(
  date_interval: null,
  days_after_purchase_interval: null,
  type: null
)
```

