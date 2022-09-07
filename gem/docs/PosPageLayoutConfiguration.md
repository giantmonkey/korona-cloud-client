# KoronaCloudClient::PosPageLayoutConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **name** | **String** |  | [optional] |
| **page_layouts** | [**Array&lt;PosPageLayout&gt;**](PosPageLayout.md) |  | [optional] |
| **quick_button_mode** | **Boolean** |  | [optional] |
| **total_button** | [**PosButton**](PosButton.md) |  | [optional] |
| **cancel_payment_button** | [**PosButton**](PosButton.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosPageLayoutConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  page_layouts: null,
  quick_button_mode: null,
  total_button: null,
  cancel_payment_button: null
)
```

