# KoronaCloudClient::PeriodRevenueDataRevenueData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **_end** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **results** | [**RevenueData**](RevenueData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PeriodRevenueDataRevenueData.new(
  start: 2018-11-22T08:40:21Z,
  _end: 2018-11-22T08:40:21Z,
  results: null
)
```

