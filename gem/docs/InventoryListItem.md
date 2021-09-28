# KoronaCloudClient::InventoryListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average_purchase_price** | **Float** |  | [optional] |
| **index** | **Integer** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |
| **stock** | [**InventoryListItemStock**](InventoryListItemStock.md) |  | [optional] |
| **stock_difference_reason** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::InventoryListItem.new(
  average_purchase_price: null,
  index: null,
  product: null,
  revision: null,
  stock: null,
  stock_difference_reason: null
)
```

