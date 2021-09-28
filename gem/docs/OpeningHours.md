# KoronaCloudClient::OpeningHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **week_day** | **String** |  | [optional] |
| **from** | **String** | Format: HH:mm:ss | [optional] |
| **to** | **String** | Format: HH:mm:ss | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::OpeningHours.new(
  week_day: null,
  from: 13:37,
  to: 13:37
)
```

