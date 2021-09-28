# KoronaCloudClient::PaymentTerminalReceipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **terminal_receipt_print_lines** | [**Array&lt;TerminalReceiptPrintLine&gt;**](TerminalReceiptPrintLine.md) |  | [optional] |
| **terminal_receipt_type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PaymentTerminalReceipt.new(
  terminal_receipt_print_lines: null,
  terminal_receipt_type: null
)
```

