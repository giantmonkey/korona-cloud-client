# KoronaCloudClient::PromotionBenefitCommonDiscount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_target** | **String** |  | [optional] |
| **appliance_type** | **String** |  | [optional] |
| **target_commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **target_product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **target_tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **unit_type** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionBenefitCommonDiscount.new(
  appliance_target: null,
  appliance_type: null,
  target_commodity_group: null,
  target_product: null,
  target_tag: null,
  type: null,
  unit_type: null,
  value: null
)
```

