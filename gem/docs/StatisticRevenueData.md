# KoronaCloudClient::StatisticRevenueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **current_period** | [**PeriodRevenueDataRevenueData**](PeriodRevenueDataRevenueData.md) |  | [optional] |
| **previous_period** | [**PeriodRevenueDataRevenueData**](PeriodRevenueDataRevenueData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StatisticRevenueData.new(
  organizational_unit: null,
  current_period: null,
  previous_period: null
)
```

