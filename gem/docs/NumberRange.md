# KoronaCloudClient::NumberRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** |  | [optional] |
| **regular_expression** | **String** |  | [optional] |
| **function** | **String** |  | [optional] |
| **case_sensitive** | **Boolean** |  | [optional] |
| **external_system_call** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **voucher_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::NumberRange.new(
  expression: null,
  regular_expression: null,
  function: null,
  case_sensitive: null,
  external_system_call: null,
  tag: null,
  voucher_configuration: null
)
```

