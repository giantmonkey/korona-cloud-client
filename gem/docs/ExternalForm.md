# KoronaCloudClient::ExternalForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice | [optional] |
| **name** | **String** |  | [optional] |
| **display_url** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **user_roles** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ExternalForm.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  display_url: null,
  category: null,
  user_roles: null
)
```

