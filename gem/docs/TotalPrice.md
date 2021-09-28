# KoronaCloudClient::TotalPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | **Float** | base price: price of the receipt or itemrow, excluded not included taxes, included discount. example: 19% tax included, 2€ discount included |  |
| **discount** | **Float** | discount: discount amount of the receipt or item row. base + discount &#x3D; undiscounted base price. | [optional] |
| **gross** | **Float** | gross price: base + not includes taxes. example: 19% tax included, 7% tax excluded | [optional] |
| **net** | **Float** | base price: price of the receipt or itemrow, excluded all taxes. example: every taxes excluded | [optional] |
| **tax_payments** | [**Array&lt;TaxPayment&gt;**](TaxPayment.md) | taxPayments: detailed tax information. could also be used to calculate the gross and net price depending on the base price |  |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TotalPrice.new(
  base: 10.0,
  discount: 2.0,
  gross: 10.7,
  net: 8.4,
  tax_payments: null
)
```

