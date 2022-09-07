# KoronaCloudClient::PriceRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **assortment** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **calculation** | [**PriceRuleCalculation**](PriceRuleCalculation.md) |  | [optional] |
| **condition** | [**PriceRuleCondition**](PriceRuleCondition.md) |  | [optional] |
| **discount_level** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **price_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **validity_period** | [**PriceRuleValidityPeriod**](PriceRuleValidityPeriod.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PriceRule.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  assortment: null,
  calculation: null,
  condition: null,
  discount_level: null,
  name: null,
  price_group: null,
  validity_period: null
)
```

