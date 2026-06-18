# KoronaCloudClient::Rental

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **order_number** | **String** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **total** | [**TotalPrice**](TotalPrice.md) |  | [optional] |
| **finish_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **items** | [**Array&lt;RentalItem&gt;**](RentalItem.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Rental.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  booking_time: 2018-11-22T09:40:21+01:00,
  cashier: null,
  comment: null,
  customer: null,
  order_number: null,
  organizational_unit: null,
  warehouse: null,
  point_of_sale: null,
  total: null,
  finish_time: 2018-11-22T09:40:21+01:00,
  items: null
)
```

