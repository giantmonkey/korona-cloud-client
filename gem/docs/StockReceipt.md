# KoronaCloudClient::StockReceipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **arrival_date** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **booking_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_api_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **create_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **dispatch_notification** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **items_count** | **Integer** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **party_information** | [**ProductTransferInvolvedPartyInformation**](ProductTransferInvolvedPartyInformation.md) |  | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **product_stock_order** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **source_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **supplier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |
| **custom_price_change** | **Float** |  | [optional] |
| **status** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockReceipt.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  arrival_date: 2018-11-22T09:40:21+01:00,
  booking_time: 2018-11-22T09:40:21+01:00,
  booking_user: null,
  booking_api_user: null,
  cashier: null,
  create_time: 2018-11-22T09:40:21+01:00,
  create_user: null,
  customer: null,
  description: null,
  dispatch_notification: null,
  items_count: null,
  organizational_unit: null,
  party_information: null,
  point_of_sale: null,
  product_stock_order: null,
  source_organizational_unit: null,
  supplier: null,
  comment: null,
  custom_price_change: null,
  status: null
)
```

