# KoronaCloudClient::CustomerDisplayConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **font_scale** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **booking_url** | **String** |  | [optional] |
| **booking_image** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_image_id** | **String** |  | [optional] |
| **closed_url** | **String** |  | [optional] |
| **closed_text** | **String** |  | [optional] |
| **closed_image** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **closed_image_id** | **String** |  | [optional] |
| **welcome_text** | **String** |  | [optional] |
| **welcome_url** | **String** |  | [optional] |
| **welcome_image** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **welcome_image_id** | **String** |  | [optional] |
| **graphical_display** | **String** |  | [optional] |
| **layout_type** | **String** |  | [optional] |
| **theme_color** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CustomerDisplayConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  font_scale: null,
  name: null,
  booking_url: null,
  booking_image: null,
  booking_image_id: null,
  closed_url: null,
  closed_text: null,
  closed_image: null,
  closed_image_id: null,
  welcome_text: null,
  welcome_url: null,
  welcome_image: null,
  welcome_image_id: null,
  graphical_display: null,
  layout_type: null,
  theme_color: null
)
```

