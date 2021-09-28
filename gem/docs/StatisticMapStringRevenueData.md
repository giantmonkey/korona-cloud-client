# KoronaCloudClient::StatisticMapStringRevenueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **current_period** | [**PeriodMapStringRevenueData**](PeriodMapStringRevenueData.md) |  | [optional] |
| **previous_period** | [**PeriodMapStringRevenueData**](PeriodMapStringRevenueData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StatisticMapStringRevenueData.new(
  organizational_unit: null,
  current_period: null,
  previous_period: null
)
```

