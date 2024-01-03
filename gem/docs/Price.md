# KoronaCloudClient::Price

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **value** | **Float** |  | [optional] |
| **valid_from** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **product_code** | **String** |  | [optional] |
| **price_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  |  |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Price.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  value: null,
  valid_from: 2018-11-22T08:40:21Z,
  product_code: null,
  price_group: null,
  organizational_unit: null,
  product: null
)
```

