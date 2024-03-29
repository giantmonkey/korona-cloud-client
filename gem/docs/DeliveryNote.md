# KoronaCloudClient::DeliveryNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **delivery_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **finalized** | **Boolean** |  | [optional][readonly] |
| **items** | [**Array&lt;DeliveryNoteItem&gt;**](DeliveryNoteItem.md) |  | [optional] |
| **order_number** | **String** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **signature** | [**Signature**](Signature.md) |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |
| **customer_order** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DeliveryNote.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  booking_time: 2018-11-22T08:40:21Z,
  cashier: null,
  comment: null,
  customer: null,
  delivery_time: 2018-11-22T08:40:21Z,
  finalized: null,
  items: null,
  order_number: null,
  organizational_unit: null,
  point_of_sale: null,
  signature: null,
  total: null,
  customer_order: null
)
```

