# KoronaCloudClient::SalesTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **dsfinvk_tax_key** | **String** |  | [optional] |
| **economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **included** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **rates** | [**Array&lt;SalesTaxRate&gt;**](SalesTaxRate.md) |  | [optional] |
| **revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::SalesTax.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  dsfinvk_tax_key: null,
  economic_zone: null,
  included: null,
  name: null,
  rates: null,
  revenue_account: null
)
```

