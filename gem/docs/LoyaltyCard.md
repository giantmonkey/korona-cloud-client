# KoronaCloudClient::LoyaltyCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice | [optional] |
| **bonus_points** | **Integer** |  |  |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **last_activity** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **stamps** | **Integer** |  |  |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::LoyaltyCard.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  bonus_points: null,
  customer: null,
  last_activity: 2024-02-06T09:40:21+01:00,
  stamps: null
)
```

