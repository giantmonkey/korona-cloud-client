# KoronaCloudClient::Attendance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **category_name** | **String** |  | [optional] |
| **category_id** | **String** |  | [optional] |
| **creation_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **event** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **expiration_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **seats** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Attendance.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  category_name: null,
  category_id: null,
  creation_time: 2018-11-22T09:40:21+01:00,
  event: null,
  expiration_time: 2018-11-22T09:40:21+01:00,
  seats: null
)
```

