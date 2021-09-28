# KoronaCloudClient::CustomerOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attendance** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **discounts** | [**Array&lt;Discount&gt;**](Discount.md) |  | [optional] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **indent** | **Integer** |  | [optional] |
| **index** | **Integer** |  | [optional][readonly] |
| **info_texts** | **Array&lt;String&gt;** |  | [optional] |
| **manual_price** | **Boolean** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **serial_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CustomerOrderItem.new(
  attendance: null,
  booking_time: 2018-11-22T09:40:21+01:00,
  commodity_group: null,
  description: null,
  discounts: null,
  id: null,
  indent: null,
  index: null,
  info_texts: null,
  manual_price: null,
  product: null,
  quantity: null,
  sector: null,
  serial_numbers: null,
  total: null
)
```

