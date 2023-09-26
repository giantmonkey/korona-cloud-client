# KoronaCloudClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **currency** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **transaction_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **transaction_token** | **String** |  | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |
| **prepaid_card** | [**PrepaidCard**](PrepaidCard.md) |  | [optional] |
| **input_amount** | **Float** |  | [optional] |
| **payment_terminal_receipts** | [**Array&lt;PaymentTerminalReceipt&gt;**](PaymentTerminalReceipt.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Payment.new(
  amount: null,
  currency: null,
  payment_method: null,
  transaction_time: 2018-11-22T09:40:21+01:00,
  transaction_token: null,
  external_references: null,
  prepaid_card: null,
  input_amount: null,
  payment_terminal_receipts: null
)
```

