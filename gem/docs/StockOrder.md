# KoronaCloudClient::StockOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **booking_api_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **create_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **create_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **deposit** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expected_from_date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **expected_to_date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **finalized** | **Boolean** |  | [optional][readonly] |
| **items** | [**Array&lt;StockOrderItem&gt;**](StockOrderItem.md) |  | [optional] |
| **items_count** | **Integer** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **party_information** | [**ProductTransferInvolvedPartyInformation**](ProductTransferInvolvedPartyInformation.md) |  | [optional] |
| **pickup_date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **shipping_condition** | **String** |  | [optional] |
| **shipping_supplier_information** | **String** |  | [optional] |
| **source_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **special_offer_code** | **String** |  | [optional] |
| **store_order** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **supplier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **status** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockOrder.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  booking_api_user: null,
  booking_time: 2018-11-22T08:40:21Z,
  booking_user: null,
  cashier: null,
  comment: null,
  create_time: 2018-11-22T08:40:21Z,
  create_user: null,
  customer: null,
  deposit: null,
  description: null,
  expected_from_date: 2018-11-22T08:40:21Z,
  expected_to_date: 2018-11-22T08:40:21Z,
  finalized: null,
  items: null,
  items_count: null,
  organizational_unit: null,
  party_information: null,
  pickup_date: 2018-11-22T08:40:21Z,
  point_of_sale: null,
  shipping_condition: null,
  shipping_supplier_information: null,
  source_organizational_unit: null,
  special_offer_code: null,
  store_order: null,
  supplier: null,
  status: null
)
```

