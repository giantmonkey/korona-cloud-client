# KoronaCloudClient::StoreOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **create_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **process_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **finish_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **target_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **items_count** | **Integer** |  | [optional] |
| **customer_order** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **pickup_date** | **Time** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StoreOrder.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  create_time: 2018-11-22T08:40:21Z,
  process_time: 2018-11-22T08:40:21Z,
  finish_time: 2018-11-22T08:40:21Z,
  point_of_sale: null,
  target_organizational_unit: null,
  comment: null,
  items_count: null,
  customer_order: null,
  pickup_date: null
)
```

