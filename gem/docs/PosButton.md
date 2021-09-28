# KoronaCloudClient::PosButton

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **color** | **String** |  | [optional] |
| **column** | **Integer** |  | [optional] |
| **row** | **Integer** |  | [optional] |
| **function_sequence** | [**Array&lt;PosButtonFunction&gt;**](PosButtonFunction.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **authorization_condition_cashier_role** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **authorization_condition_four_eyes** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosButton.new(
  color: null,
  column: null,
  row: null,
  function_sequence: null,
  name: null,
  size: null,
  authorization_condition_cashier_role: null,
  authorization_condition_four_eyes: null
)
```

