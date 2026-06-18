# KoronaCloudClient::ScoConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice | [optional] |
| **name** | **String** |  | [optional] |
| **thank_you_page_visibility_timeout** | **Integer** |  | [optional] |
| **digital_receipt_visibility_timeout** | **Integer** |  | [optional] |
| **inactivity_receipt_cancelation_timeout** | **Integer** |  | [optional] |
| **inactivity_request_timeout** | **Integer** |  | [optional] |
| **hint_visibility_timeout** | **Integer** |  | [optional] |
| **coupon_query** | **Boolean** |  | [optional] |
| **digital_receipt** | **Boolean** |  | [optional] |
| **ad_position** | **String** |  | [optional] |
| **ad_size** | **Integer** |  | [optional] |
| **ad_url** | **String** |  | [optional] |
| **user_interface** | **String** |  | [optional] |
| **custom_ui_url** | **String** |  | [optional] |
| **custom_ui_basic_auth_user** | **String** |  | [optional] |
| **custom_ui_basic_auth_password** | **String** |  | [optional] |
| **custom_css_file** | **File** |  | [optional] |
| **logo_image** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **button_layout** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **advanced_settings** | **Hash&lt;String, String&gt;** |  | [optional] |
| **language_settings** | [**Array&lt;ScoLanguageSetting&gt;**](ScoLanguageSetting.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ScoConfiguration.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  thank_you_page_visibility_timeout: null,
  digital_receipt_visibility_timeout: null,
  inactivity_receipt_cancelation_timeout: null,
  inactivity_request_timeout: null,
  hint_visibility_timeout: null,
  coupon_query: null,
  digital_receipt: null,
  ad_position: null,
  ad_size: null,
  ad_url: null,
  user_interface: null,
  custom_ui_url: null,
  custom_ui_basic_auth_user: null,
  custom_ui_basic_auth_password: null,
  custom_css_file: null,
  logo_image: null,
  button_layout: null,
  advanced_settings: null,
  language_settings: null
)
```

