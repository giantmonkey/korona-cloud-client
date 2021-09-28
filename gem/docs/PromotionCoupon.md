# KoronaCloudClient::PromotionCoupon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code_type** | **String** |  | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **text** | **String** |  | [optional] |
| **validity** | [**PromotionCouponValidity**](PromotionCouponValidity.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionCoupon.new(
  code_type: null,
  organizational_units: null,
  text: null,
  validity: null
)
```

