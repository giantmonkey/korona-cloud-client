# KoronaCloudClient::Statistic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **current_period** | [**PeriodObject**](PeriodObject.md) |  | [optional] |
| **previous_period** | [**PeriodObject**](PeriodObject.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Statistic.new(
  organizational_unit: null,
  current_period: null,
  previous_period: null
)
```

