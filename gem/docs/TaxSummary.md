# KoronaCloudClient::TaxSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **net_amount** | **Float** |  | [optional] |
| **sales_tax** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **tax_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TaxSummary.new(
  net_amount: null,
  sales_tax: null,
  tax_amount: null
)
```

