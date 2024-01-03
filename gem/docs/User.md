# KoronaCloudClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **email** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **surname** | **String** |  | [optional] |
| **_alias** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **user_role** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **create_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **last_login** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::User.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  email: null,
  password: null,
  firstname: null,
  surname: null,
  _alias: null,
  phone_number: null,
  user_role: null,
  organizational_units: null,
  create_time: 2018-11-22T08:40:21Z,
  last_login: 2018-11-22T08:40:21Z
)
```

