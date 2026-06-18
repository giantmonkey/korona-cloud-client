# KoronaCloudClient::SupplierPaymentInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **bank** | **String** |  | [optional] |
| **bank_number** | **String** |  | [optional] |
| **bic** | **String** |  | [optional] |
| **iban** | **String** |  | [optional] |
| **creditor_identifier** | **String** |  | [optional] |
| **currency** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **payment_method** | **String** | SupplierPaymentMethod | [optional] |
| **minimum_order_value** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::SupplierPaymentInformation.new(
  account_number: null,
  bank: null,
  bank_number: null,
  bic: null,
  iban: null,
  creditor_identifier: null,
  currency: null,
  payment_method: null,
  minimum_order_value: null
)
```

