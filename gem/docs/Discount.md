# KoronaCloudClient::Discount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupons** | [**Array&lt;DiscountCoupon&gt;**](DiscountCoupon.md) |  | [optional][readonly] |
| **label** | **String** |  | [optional] |
| **promotion** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **receipt_discount** | **Boolean** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **level** | **Integer** |  | [optional] |
| **price_rule** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Discount.new(
  coupons: null,
  label: null,
  promotion: null,
  receipt_discount: null,
  value: null,
  level: null,
  price_rule: null
)
```

