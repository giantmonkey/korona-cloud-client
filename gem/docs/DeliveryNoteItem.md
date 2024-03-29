# KoronaCloudClient::DeliveryNoteItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **serial_numbers** | **Array&lt;Object&gt;** |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **indent** | **Integer** |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |
| **info_texts** | **Array&lt;Object&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DeliveryNoteItem.new(
  product: null,
  quantity: null,
  serial_numbers: null,
  sector: null,
  commodity_group: null,
  indent: null,
  total: null,
  info_texts: null,
  id: null
)
```

