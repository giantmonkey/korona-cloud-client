# KoronaCloudClient::TimeTrackingEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **time_stamp** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **time_tracking_entity** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TimeTrackingEntry.new(
  id: null,
  active: null,
  revision: null,
  time_stamp: 2018-11-22T09:40:21+01:00,
  cashier: null,
  organizational_unit: null,
  time_tracking_entity: null
)
```

