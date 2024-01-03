# KoronaCloudClient::CashierVerificationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **finish_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **requirement** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **selected_option** | **String** |  | [optional] |
| **failed** | **Boolean** |  | [optional] |
| **date_of_birth** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CashierVerificationResult.new(
  finish_time: 2018-11-22T08:40:21Z,
  requirement: null,
  selected_option: null,
  failed: null,
  date_of_birth: 2018-11-22T08:40:21Z,
  type: null
)
```

