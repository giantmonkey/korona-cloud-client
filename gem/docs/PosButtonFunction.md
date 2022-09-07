# KoronaCloudClient::PosButtonFunction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **macro** | **String** |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **button_layout** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **info_text** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **button_status** | **String** |  | [optional] |
| **external_system_call** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **internal_system_call_type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosButtonFunction.new(
  product: null,
  macro: null,
  payment_method: null,
  button_layout: null,
  info_text: null,
  customer_group: null,
  account: null,
  type: null,
  tag: null,
  button_status: null,
  external_system_call: null,
  internal_system_call_type: null
)
```

