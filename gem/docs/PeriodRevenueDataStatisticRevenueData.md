# KoronaCloudClient::PeriodRevenueDataStatisticRevenueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **_end** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **results** | [**StatisticRevenueData**](StatisticRevenueData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PeriodRevenueDataStatisticRevenueData.new(
  start: 2018-11-22T09:40:21+01:00,
  _end: 2018-11-22T09:40:21+01:00,
  results: null
)
```

