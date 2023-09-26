# KoronaCloudClient::StatisticListTopSeller

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **current_period** | [**PeriodRevenueDataListStatisticTopSeller**](PeriodRevenueDataListStatisticTopSeller.md) |  | [optional] |
| **previous_period** | [**PeriodRevenueDataListStatisticTopSeller**](PeriodRevenueDataListStatisticTopSeller.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StatisticListTopSeller.new(
  organizational_unit: null,
  current_period: null,
  previous_period: null
)
```

