# KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupon_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **type** | **String** |  | [optional] |
| **commodity_groups** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **products** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **sectors** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **tags** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **_not** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionFilter.new(
  coupon_numbers: null,
  type: null,
  commodity_groups: null,
  products: null,
  sectors: null,
  tags: null,
  _not: null
)
```

