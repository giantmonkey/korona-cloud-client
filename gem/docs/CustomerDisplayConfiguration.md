# KoronaCloudClient::CustomerDisplayConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **font_scale** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **booking_url** | **String** |  | [optional] |
| **booking_image_id** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **closed_url** | **String** |  | [optional] |
| **closed_text** | **String** |  | [optional] |
| **closed_image_id** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **welcome_text** | **String** |  | [optional] |
| **welcome_url** | **String** |  | [optional] |
| **welcome_image_id** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **graphical_display** | **String** |  | [optional] |
| **layout_type** | **String** |  | [optional] |
| **theme_color** | **String** |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CustomerDisplayConfiguration.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  font_scale: null,
  name: null,
  booking_url: null,
  booking_image_id: null,
  closed_url: null,
  closed_text: null,
  closed_image_id: null,
  welcome_text: null,
  welcome_url: null,
  welcome_image_id: null,
  graphical_display: null,
  layout_type: null,
  theme_color: null,
  number_length: null
)
```

