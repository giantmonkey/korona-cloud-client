# KoronaCloudClient::VoucherSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **transactions** | **Float** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::VoucherSummary.new(
  voucher_configuration: null,
  amount: null,
  transactions: null,
  transaction_type: null
)
```

