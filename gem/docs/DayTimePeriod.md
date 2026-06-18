# KoronaCloudClient::DayTimePeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | HH:mm:ss | [optional] |
| **to** | **String** | HH:mm:ss | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DayTimePeriod.new(
  from: 09:40:21,
  to: 09:40:21
)
```

