# KoronaCloudClient::DiscountConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **discount_calculation_type** | **String** |  | [optional] |
| **discount_levels** | [**Array&lt;DiscountConfigurationCustomDiscountLevel&gt;**](DiscountConfigurationCustomDiscountLevel.md) |  | [optional] |
| **system_discount_levels** | [**Array&lt;DiscountConfigurationSystemDiscountLevel&gt;**](DiscountConfigurationSystemDiscountLevel.md) |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DiscountConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  discount_calculation_type: null,
  discount_levels: null,
  system_discount_levels: null,
  name: null
)
```

