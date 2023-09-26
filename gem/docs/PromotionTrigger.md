# KoronaCloudClient::PromotionTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_groups** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **customers** | **Object** |  | [optional] |
| **external_coupon_number** | **String** | ignored if &#x60;type&#x60;&#x3D;STAMPS | [optional] |
| **product_amount** | [**PromotionTriggerProductAmountCondition**](PromotionTriggerProductAmountCondition.md) |  | [optional] |
| **receipt_product_amount** | [**PromotionTriggerReceiptProductAmountCondition**](PromotionTriggerReceiptProductAmountCondition.md) |  | [optional] |
| **receipt_revenue** | [**PromotionTriggerReceiptRevenueCondition**](PromotionTriggerReceiptRevenueCondition.md) |  | [optional] |
| **tag_amount** | [**PromotionTriggerTagAmountCondition**](PromotionTriggerTagAmountCondition.md) |  | [optional] |
| **tag_revenue** | [**PromotionTriggerTagRevenueCondition**](PromotionTriggerTagRevenueCondition.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionTrigger.new(
  customer_groups: null,
  customers: null,
  external_coupon_number: null,
  product_amount: null,
  receipt_product_amount: null,
  receipt_revenue: null,
  tag_amount: null,
  tag_revenue: null
)
```

