# KoronaCloudClient::Inventory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **automatic_booking** | **Boolean** |  | [optional] |
| **automatic_booking_after_days** | **Integer** | only if isAutomaticBooking&#x3D;true | [optional] |
| **check_product_assortment_validity** | **Boolean** |  | [optional] |
| **check_product_listing** | **Boolean** |  | [optional] |
| **create_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **description** | **String** |  | [optional] |
| **execution_days** | **Array&lt;String&gt;** | only if type&#x3D;PERPETUAL_INVENTORY | [optional] |
| **execution_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **has_booked_receipts** | **Boolean** |  | [optional][readonly] |
| **max_products_per_list** | **Integer** | only if type&#x3D;ANNUAL_INVENTORY | INVENTORY_IRREGULARITY | [optional] |
| **one_commodity_group_per_inventory_list** | **Boolean** | only if type&#x3D;ANNUAL_INVENTORY | INVENTORY_IRREGULARITY | [optional] |
| **only_negative_product_stocks** | **Boolean** | only if type&#x3D;INVENTORY_IRREGULARITY | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **product_filter** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Inventory.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  automatic_booking: null,
  automatic_booking_after_days: null,
  check_product_assortment_validity: null,
  check_product_listing: null,
  create_time: 2018-11-22T09:40:21+01:00,
  description: null,
  execution_days: null,
  execution_time: 2018-11-22T09:40:21+01:00,
  has_booked_receipts: null,
  max_products_per_list: null,
  one_commodity_group_per_inventory_list: null,
  only_negative_product_stocks: null,
  organizational_units: null,
  product_filter: null,
  type: null
)
```

