# KoronaCloudClient::ProductPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | the price of the product if [productCode] or [validFrom] matches |  |
| **valid_from** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **product_code** | **String** | product code the price is valid for. [productCode] or [validFrom] is required, but not both. | [optional] |
| **price_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **number** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductPrice.new(
  value: null,
  valid_from: 2018-11-22T09:40:21+01:00,
  product_code: null,
  price_group: null,
  organizational_unit: null,
  number: null,
  id: null
)
```

