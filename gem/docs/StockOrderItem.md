# KoronaCloudClient::StockOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **product_code** | **String** |  | [optional] |
| **supplier_item_number** | **String** |  | [optional] |
| **product_number** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **container_size** | **Float** |  | [optional] |
| **item_price** | **Float** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **delivery_date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **received_quantity** | **Float** |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockOrderItem.new(
  name: null,
  product_code: null,
  supplier_item_number: null,
  product_number: null,
  size: null,
  quantity: null,
  container_size: null,
  item_price: null,
  product: null,
  delivery_date: 2018-11-22T08:40:21Z,
  received_quantity: null,
  revision: null
)
```

