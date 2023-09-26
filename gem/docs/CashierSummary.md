# KoronaCloudClient::CashierSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancelled_items** | [**CashierSummaryAmountCountData**](CashierSummaryAmountCountData.md) |  | [optional] |
| **cancelled_receipts** | [**CashierSummaryAmountCountData**](CashierSummaryAmountCountData.md) |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **receipts** | [**CashierSummaryAmountCountData**](CashierSummaryAmountCountData.md) |  | [optional] |
| **returns** | [**CashierSummaryAmountCountData**](CashierSummaryAmountCountData.md) |  | [optional] |
| **voided_receipts** | [**CashierSummaryAmountCountData**](CashierSummaryAmountCountData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CashierSummary.new(
  cancelled_items: null,
  cancelled_receipts: null,
  cashier: null,
  receipts: null,
  returns: null,
  voided_receipts: null
)
```

