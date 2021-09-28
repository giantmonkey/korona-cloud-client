# KoronaCloudClient::PaymentSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actual_amount** | **Float** |  | [optional] |
| **expected_amount** | **Float** |  | [optional] |
| **payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PaymentSummary.new(
  actual_amount: null,
  expected_amount: null,
  payment_method: null
)
```

