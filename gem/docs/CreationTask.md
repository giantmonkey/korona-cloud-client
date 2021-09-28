# KoronaCloudClient::CreationTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **creation_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **ticket_number_start** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **created** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **product_number** | **String** |  | [optional] |
| **personalization** | [**TicketPersonalization**](TicketPersonalization.md) |  | [optional] |
| **ticket_data** | [**TicketData**](TicketData.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CreationTask.new(
  entry_id: null,
  description: null,
  user: null,
  creation_time: 2018-11-22T09:40:21+01:00,
  ticket_number_start: null,
  quantity: null,
  created: null,
  status: null,
  product_number: null,
  personalization: null,
  ticket_data: null
)
```

