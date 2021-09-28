# KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **coupon_number** | **String** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionFilter.new(
  commodity_group: null,
  coupon_number: null,
  product: null,
  sector: null,
  tag: null,
  type: null
)
```

