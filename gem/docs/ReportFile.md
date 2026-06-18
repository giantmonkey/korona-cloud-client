# KoronaCloudClient::ReportFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice | [optional] |
| **data** | **String** | use new property file | [optional] |
| **file_name** | **String** | use new property file | [optional] |
| **file** | **File** |  | [optional] |
| **type** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ReportFile.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  data: null,
  file_name: null,
  file: null,
  type: null,
  name: null
)
```

