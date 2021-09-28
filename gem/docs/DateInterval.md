# KoronaCloudClient::DateInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | Format: yyyy-MM-dd | [optional] |
| **to** | **Date** | Format: yyyy-MM-dd | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DateInterval.new(
  from: Sun Nov 22 01:00:00 CET 2020,
  to: Wed Nov 25 01:00:00 CET 2020
)
```

