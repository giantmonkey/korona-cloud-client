# KoronaCloudClient::ProductContainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prices** | [**Array&lt;ProductPrice&gt;**](ProductPrice.md) |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **default_container** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductContainer.new(
  prices: null,
  product: null,
  description: null,
  default_container: null
)
```

