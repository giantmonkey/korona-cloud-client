# KoronaCloudClient::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_organizational_units** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **target_points_of_sale** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **command_type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Message.new(
  target_organizational_units: null,
  target_points_of_sale: null,
  command_type: null
)
```

