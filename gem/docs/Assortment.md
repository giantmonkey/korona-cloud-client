# KoronaCloudClient::Assortment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **cost_center** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **last_clean_up** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional][readonly] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Assortment.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  cost_center: null,
  description: null,
  last_clean_up: 2018-11-22T09:40:21+01:00,
  name: null
)
```

