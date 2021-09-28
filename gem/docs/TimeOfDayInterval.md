# KoronaCloudClient::TimeOfDayInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Pattern: ^([0-1][0-9]|2[0-3])(\\:[0-5][0-9]){2,2}$ | [optional] |
| **to** | **String** | Pattern: ^([0-1][0-9]|2[0-3])(\\:[0-5][0-9]){2,2}$ | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TimeOfDayInterval.new(
  from: 00:08:00,
  to: 00:17:00
)
```

