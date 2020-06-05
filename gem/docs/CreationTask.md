# KoronaCloudClient::CreationTask

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_id** | **Integer** |  | [optional] 
**description** | **String** |  | [optional] 
**user** | **String** |  | [optional] 
**creation_time** | **DateTime** |  | [optional] 
**ticket_number_start** | **String** |  | [optional] 
**quantity** | **Integer** |  | [optional] 
**created** | **Integer** |  | [optional] 
**status** | **String** |  | [optional] 
**product_number** | **String** |  | [optional] 
**personalization** | [**TicketPersonalization**](TicketPersonalization.md) |  | [optional] 
**ticket_data** | [**TicketData**](TicketData.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::CreationTask.new(entry_id: null,
                                 description: null,
                                 user: null,
                                 creation_time: null,
                                 ticket_number_start: null,
                                 quantity: null,
                                 created: null,
                                 status: null,
                                 product_number: null,
                                 personalization: null,
                                 ticket_data: null)
```


