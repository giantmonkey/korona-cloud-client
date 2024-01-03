# KoronaCloudClient::AdditionalReceiptInfoType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **cashier_input_required** | **Boolean** |  | [optional] |
| **customer_groups** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **min_item_quantity** | **Float** |  | [optional] |
| **min_total** | **Float** |  | [optional] |
| **options** | **Array&lt;String&gt;** |  | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **required** | **Boolean** |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **validity** | [**Validity**](Validity.md) |  | [optional] |
| **points_of_sale** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **points_of_sale_selection_mode** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::AdditionalReceiptInfoType.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  cashier_input_required: null,
  customer_groups: null,
  description: null,
  min_item_quantity: null,
  min_total: null,
  options: null,
  organizational_units: null,
  required: null,
  tag: null,
  validity: null,
  points_of_sale: null,
  points_of_sale_selection_mode: null
)
```

