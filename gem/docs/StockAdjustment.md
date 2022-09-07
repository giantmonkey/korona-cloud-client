# KoronaCloudClient::StockAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **booking_api_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional][readonly] |
| **booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **finish_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional][readonly] |
| **production** | **Boolean** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **receipt_number** | **String** |  | [optional] |
| **warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **status** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StockAdjustment.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  booking_api_user: null,
  booking_time: 2018-11-22T09:40:21+01:00,
  booking_user: null,
  external_id: null,
  finish_time: 2018-11-22T09:40:21+01:00,
  production: null,
  reason: null,
  receipt_number: null,
  warehouse: null,
  status: null
)
```

