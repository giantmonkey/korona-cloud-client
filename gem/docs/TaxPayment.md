# KoronaCloudClient::TaxPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **tax_rate** | **Float** |  | [optional] |
| **included** | **Boolean** |  | [optional] |
| **sales_tax** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TaxPayment.new(
  amount: null,
  tax_rate: null,
  included: null,
  sales_tax: null
)
```

