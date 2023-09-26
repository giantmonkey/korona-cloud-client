# KoronaCloudClient::TimeOfDayInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | HH:mm:ss | [optional] |
| **to** | **String** | HH:mm:ss | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TimeOfDayInterval.new(
  from: 00:08:00,
  to: 00:17:00
)
```

