# KoronaCloudClient::TaxPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **tax_rate** | **Float** |  | [optional] |
| **included** | **Boolean** |  | [optional][readonly] |
| **sales_tax** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **gross_amount** | **Float** |  | [optional][readonly] |
| **net_amount** | **Float** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TaxPayment.new(
  amount: null,
  tax_rate: null,
  included: null,
  sales_tax: null,
  gross_amount: null,
  net_amount: null
)
```

