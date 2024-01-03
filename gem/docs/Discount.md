# KoronaCloudClient::Discount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupons** | [**Array&lt;Coupon&gt;**](Coupon.md) |  | [optional][readonly] |
| **label** | **String** |  | [optional] |
| **promotion** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **receipt_discount** | **Boolean** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **level** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Discount.new(
  coupons: null,
  label: null,
  promotion: null,
  receipt_discount: null,
  value: null,
  level: null
)
```

