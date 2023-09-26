# KoronaCloudClient::EndOfDayStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **finish_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **receipt_count** | **Integer** |  | [optional] |
| **successfully_checked** | **Boolean** |  | [optional] |
| **summaries** | [**EndOfDayStatementSummary**](EndOfDayStatementSummary.md) |  | [optional] |
| **z_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::EndOfDayStatement.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  finish_time: 2018-11-22T09:40:21+01:00,
  receipt_count: null,
  successfully_checked: null,
  summaries: null,
  z_count: null
)
```

