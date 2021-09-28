# KoronaCloudClient::ProductPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | the price of the product if [productCode] or [validFrom] matches | [optional] |
| **valid_from** | **Time** | start date the price is valid from. [productCode] or [validFrom] is required, but not both. | [optional] |
| **product_code** | **String** | product code the price is valid for. [productCode] or [validFrom] is required, but not both. | [optional] |
| **price_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductPrice.new(
  value: null,
  valid_from: null,
  product_code: null,
  price_group: null,
  organizational_unit: null
)
```

