# KoronaCloudClient::StatisticMapStringRevenueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **current_period** | [**PeriodRevenueDataMapStringRevenueData**](PeriodRevenueDataMapStringRevenueData.md) |  | [optional] |
| **previous_period** | [**PeriodRevenueDataMapStringRevenueData**](PeriodRevenueDataMapStringRevenueData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StatisticMapStringRevenueData.new(
  organizational_unit: null,
  current_period: null,
  previous_period: null
)
```

