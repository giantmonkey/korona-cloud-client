# KoronaCloudClient::Ticket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **Integer** |  | [optional] |
| **personalization** | [**TicketPersonalization**](TicketPersonalization.md) |  | [optional] |
| **ticket_number** | **String** |  | [optional] |
| **duplicate** | **Boolean** |  | [optional] |
| **creation_date** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **locked** | **Boolean** |  | [optional] |
| **locked_to** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Ticket.new(
  entry_id: null,
  personalization: null,
  ticket_number: null,
  duplicate: null,
  creation_date: 2018-11-22T09:40:21+01:00,
  locked: null,
  locked_to: 2018-11-22T09:40:21+01:00
)
```

