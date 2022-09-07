# KoronaCloudClient::TopSeller

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx). recommended to use for linking purposes. will never change. | [optional] |
| **name** | **String** | name, like it is set in backoffice | [optional] |
| **number** | **String** | number, like it is set in backoffice | [optional] |
| **gross_amount** | **Float** |  | [optional] |
| **quantity** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TopSeller.new(
  id: null,
  name: null,
  number: null,
  gross_amount: null,
  quantity: null
)
```

