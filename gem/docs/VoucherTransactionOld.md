# KoronaCloudClient::VoucherTransactionOld

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **voucher** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |
| **voided** | **Boolean** |  | [optional] |
| **voucher_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::VoucherTransactionOld.new(
  amount: null,
  booking_time: 2018-11-22T08:40:21Z,
  cashier: null,
  comment: null,
  price: null,
  transaction_type: null,
  user: null,
  voucher: null,
  external_references: null,
  voided: null,
  voucher_configuration: null
)
```

