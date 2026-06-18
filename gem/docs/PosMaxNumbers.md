# KoronaCloudClient::PosMaxNumbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_receipt_number** | **String** |  | [optional] |
| **last_z_count** | **Integer** |  | [optional] |
| **last_quote_number** | **String** |  | [optional] |
| **last_rental_number** | **String** |  | [optional] |
| **last_customer_order_number** | **String** |  | [optional] |
| **last_delivery_note_number** | **String** |  | [optional] |
| **last_store_order_number** | **String** |  | [optional] |
| **last_pos_balance_transaction_code** | **String** |  | [optional] |
| **last_stock_adjustment_number** | **String** |  | [optional] |
| **last_stock_receipt_number** | **String** |  | [optional] |
| **last_inventory_receipt_number** | **String** |  | [optional] |
| **last_manufacturing_number** | **String** |  | [optional] |
| **last_stock_return_number** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosMaxNumbers.new(
  last_receipt_number: null,
  last_z_count: null,
  last_quote_number: null,
  last_rental_number: null,
  last_customer_order_number: null,
  last_delivery_note_number: null,
  last_store_order_number: null,
  last_pos_balance_transaction_code: null,
  last_stock_adjustment_number: null,
  last_stock_receipt_number: null,
  last_inventory_receipt_number: null,
  last_manufacturing_number: null,
  last_stock_return_number: null
)
```

