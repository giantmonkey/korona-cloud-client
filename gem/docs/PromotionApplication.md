# KoronaCloudClient::PromotionApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **iterations** | **Integer** |  | [optional] |
| **discount_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PromotionApplication.new(
  promotion: null,
  iterations: null,
  discount_amount: null
)
```

