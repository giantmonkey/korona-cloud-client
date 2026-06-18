# KoronaCloudClient::CurrencyExchangeRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **factor** | **Float** |  | [optional] |
| **valid_from** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CurrencyExchangeRate.new(
  factor: null,
  valid_from: 2018-11-22T09:40:21+01:00
)
```

