# KoronaCloudClient::CustomerGroupSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **discount_amount** | **Float** |  | [optional] |
| **items** | **Float** |  | [optional] |
| **revenue** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CustomerGroupSummary.new(
  customer_group: null,
  discount_amount: null,
  items: null,
  revenue: null
)
```

