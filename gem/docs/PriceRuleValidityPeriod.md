# KoronaCloudClient::PriceRuleValidityPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_interval** | [**DateInterval**](DateInterval.md) |  | [optional] |
| **repetition_interval** | [**PriceRuleTimeValidityRepetitionInterval**](PriceRuleTimeValidityRepetitionInterval.md) |  | [optional] |
| **time_of_day_interval** | [**TimeOfDayInterval**](TimeOfDayInterval.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PriceRuleValidityPeriod.new(
  date_interval: null,
  repetition_interval: null,
  time_of_day_interval: null
)
```

