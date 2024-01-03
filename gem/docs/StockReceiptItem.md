# KoronaCloudClient::StockReceiptItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**StockReceiptItemAmount**](StockReceiptItemAmount.md) |  | [optional] |
| **identification** | [**StockReceiptItemIdentification**](StockReceiptItemIdentification.md) |  | [optional] |
| **index** | **Integer** |  | [optional][readonly] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **purchase_price** | [**StockReceiptItemPurchasePrice**](StockReceiptItemPurchasePrice.md) |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |
| **shelf_life** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockReceiptItem.new(
  amount: null,
  identification: null,
  index: null,
  product: null,
  purchase_price: null,
  revision: null,
  shelf_life: 2018-11-22T08:40:21Z
)
```

