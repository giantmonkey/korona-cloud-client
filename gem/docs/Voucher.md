# KoronaCloudClient::Voucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **amount** | **Float** |  | [optional][readonly] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **voucher_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **created_on** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **valid_to** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **locked** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Voucher.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  amount: null,
  customer: null,
  voucher_configuration: null,
  created_on: 2018-11-22T09:40:21+01:00,
  valid_to: 2018-11-22T09:40:21+01:00,
  locked: null
)
```

