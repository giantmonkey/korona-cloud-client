# KoronaCloudClient::SpecialPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | required | [optional] |
| **quantity_from** | **Float** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::SpecialPrice.new(
  value: null,
  quantity_from: null,
  product: null
)
```

