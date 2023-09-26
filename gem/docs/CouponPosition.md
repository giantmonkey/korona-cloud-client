# KoronaCloudClient::CouponPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupon** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **redeemed** | **Boolean** |  | [optional] |
| **auto_generated** | **Boolean** |  | [optional] |
| **selected_by_promotions** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **triggered_by_promotions** | **Object** |  | [optional] |
| **coupon_number** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CouponPosition.new(
  coupon: null,
  redeemed: null,
  auto_generated: null,
  selected_by_promotions: null,
  triggered_by_promotions: null,
  coupon_number: null
)
```

