# KoronaCloudClient::SpecialPriceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **name** | **String** |  | [optional] |
| **valid_from** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX |  |
| **valid_to** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX |  |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::SpecialPriceConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  valid_from: 2018-11-22T08:40:21Z,
  valid_to: 2018-11-22T08:40:21Z,
  organizational_units: null
)
```

