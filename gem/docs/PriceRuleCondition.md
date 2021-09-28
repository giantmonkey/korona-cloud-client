# KoronaCloudClient::PriceRuleCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **min_amount** | **Float** |  | [optional] |
| **position_type** | **String** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **sale_tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PriceRuleCondition.new(
  commodity_group: null,
  customer_group: null,
  min_amount: null,
  position_type: null,
  product: null,
  sale_tag: null,
  tag: null
)
```

