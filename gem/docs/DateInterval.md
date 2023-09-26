# KoronaCloudClient::DateInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | yyyy-MM-dd | [optional] |
| **to** | **Date** | yyyy-MM-dd | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DateInterval.new(
  from: 2020-11-22,
  to: 2020-11-25
)
```

