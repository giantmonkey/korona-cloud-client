# KoronaCloudClient::PosBalanceSummaryChangeset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **new_actual** | **Float** |  | [optional] |
| **old_actual** | **Float** |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **user** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosBalanceSummaryChangeset.new(
  change_time: 2018-11-22T09:40:21+01:00,
  new_actual: null,
  old_actual: null,
  payment_method: null,
  user: null
)
```

