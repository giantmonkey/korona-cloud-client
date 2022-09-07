# KoronaCloudClient::Cashier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **_alias** | **String** |  | [optional] |
| **deactivated** | **Boolean** |  | [optional] |
| **email** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **surname** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **login_code** | **String** | by default, the md5 hash of the cashiers login code. on GET requests this can be changed via the &#x60;displayCashierCredentials&#x3D;(HASH|PLAIN|NONE)&#x60; parameter, on POST and PATCH it is always assumed to be &#x60;PLAIN&#x60; text. | [optional] |
| **login_password** | **String** | by default, the md5 hash of the cashiers login password. on GET requests this can be changed via the &#x60;displayCashierCredentials&#x3D;(HASH|PLAIN|NONE)&#x60; parameter, on POST and PATCH it is always assumed to be &#x60;PLAIN&#x60; text. | [optional] |
| **permissions** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **role** | **String** |  | [optional][readonly] |
| **bonus_points** | **Integer** |  | [optional] |
| **background_color** | **Integer** |  | [optional] |
| **organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **cashier_role** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_time** | **Date** | Format: yyyy-MM-dd | [optional][readonly] |
| **last_receipt_time** | **Date** | Format: yyyy-MM-dd | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Cashier.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  _alias: null,
  deactivated: null,
  email: null,
  firstname: null,
  surname: null,
  gender: null,
  login_code: null,
  login_password: null,
  permissions: null,
  role: null,
  bonus_points: null,
  background_color: null,
  organizational_units: null,
  cashier_role: null,
  create_time: Thu Nov 22 01:00:00 CET 2018,
  last_receipt_time: Thu Nov 22 01:00:00 CET 2018
)
```

