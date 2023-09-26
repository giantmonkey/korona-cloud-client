# KoronaCloudClient::TicketData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid_from** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **daily_valid_from** | **String** | HH:mm:ss | [optional] |
| **max_possible_admissions** | **Integer** |  | [optional] |
| **valid_to** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **daily_valid_to** | **String** | HH:mm:ss | [optional] |
| **entry_gate_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **ticket_number_prefix** | **String** |  | [optional] |
| **days_blocked_after_use** | **Integer** |  | [optional] |
| **activation_delay** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **validity_period_after_purchase** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **validity_period_after_entrance** | [**TimePeriod**](TimePeriod.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TicketData.new(
  valid_from: 2018-11-22T09:40:21+01:00,
  daily_valid_from: 13:37,
  max_possible_admissions: null,
  valid_to: 2018-11-22T09:40:21+01:00,
  daily_valid_to: 13:37,
  entry_gate_numbers: null,
  ticket_number_prefix: null,
  days_blocked_after_use: null,
  activation_delay: null,
  validity_period_after_purchase: null,
  validity_period_after_entrance: null
)
```

