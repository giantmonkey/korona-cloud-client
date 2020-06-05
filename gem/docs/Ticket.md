# KoronaCloudClient::Ticket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_id** | **Integer** |  | [optional] 
**personalization** | [**TicketPersonalization**](TicketPersonalization.md) |  | [optional] 
**ticket_number** | **String** |  | [optional] 
**duplicate** | **Boolean** |  | [optional] 
**creation_date** | **DateTime** |  | [optional] 
**locked** | **Boolean** |  | [optional] 
**locked_to** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Ticket.new(entry_id: null,
                                 personalization: null,
                                 ticket_number: null,
                                 duplicate: null,
                                 creation_date: null,
                                 locked: null,
                                 locked_to: null)
```


