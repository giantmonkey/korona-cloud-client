# KoronaCloudClient::ProductSpecialPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | required | [optional] |
| **quantity_from** | **Float** |  | [optional] |
| **special_price_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductSpecialPrice.new(
  value: null,
  quantity_from: null,
  special_price_configuration: null
)
```

