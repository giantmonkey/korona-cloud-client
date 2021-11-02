# KoronaCloudClient::CashierVerificationRequirement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **question_text** | **String** |  | [optional] |
| **required_age** | **Integer** |  | [optional] |
| **type** | **String** |  | [optional] |
| **answer_options** | **Array&lt;String&gt;** |  | [optional] |
| **failure_text** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CashierVerificationRequirement.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  question_text: null,
  required_age: null,
  type: null,
  answer_options: null,
  failure_text: null,
  name: null
)
```

