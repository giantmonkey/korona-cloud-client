# KoronaCloudClient::ExternalSystemCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **display_url** | **String** |  | [optional] |
| **display_url_post** | **Boolean** |  | [optional] |
| **system_url** | **String** |  | [optional] |
| **login** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **connect_timeout_millis** | **Integer** |  | [optional] |
| **request_timeout_millis** | **Integer** |  | [optional] |
| **customer_display_url** | **String** |  | [optional] |
| **deactivated** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ExternalSystemCall.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  name: null,
  display_url: null,
  display_url_post: null,
  system_url: null,
  login: null,
  password: null,
  connect_timeout_millis: null,
  request_timeout_millis: null,
  customer_display_url: null,
  deactivated: null
)
```

