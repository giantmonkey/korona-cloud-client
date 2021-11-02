# KoronaCloudClient::SpecialPriceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **valid_from** | **Time** | required; Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **valid_to** | **Time** | required; Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::SpecialPriceConfiguration.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  name: null,
  valid_from: 2018-11-22T09:40:21+01:00,
  valid_to: 2018-11-22T09:40:21+01:00,
  organizational_units: null
)
```

