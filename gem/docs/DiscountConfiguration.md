# KoronaCloudClient::DiscountConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **custom_levels** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **default_levels** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **strict_receipt_discountability_compliance** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DiscountConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  custom_levels: null,
  default_levels: null,
  name: null,
  strict_receipt_discountability_compliance: null
)
```

