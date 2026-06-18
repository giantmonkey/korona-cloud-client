# KoronaCloudClient::Deposit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **receipt_number** | **String** |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Deposit.new(
  account: null,
  amount: null,
  receipt_number: null,
  cashier: null,
  create_time: 2018-11-22T09:40:21+01:00
)
```

