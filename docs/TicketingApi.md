# KoronaClient::TicketingApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entry_gate**](TicketingApi.md#get_entry_gate) | **GET** /accounts/{koronaAccountId}/entryGates/{entryGateIdOrNumber} | lists the entry gate
[**get_entry_gates**](TicketingApi.md#get_entry_gates) | **GET** /accounts/{koronaAccountId}/entryGates | lists all entry gates
[**get_event**](TicketingApi.md#get_event) | **GET** /accounts/{koronaAccountId}/events/{eventIdOrNumber} | lists the event
[**get_events**](TicketingApi.md#get_events) | **GET** /accounts/{koronaAccountId}/events | lists all events
[**get_ticket_definition**](TicketingApi.md#get_ticket_definition) | **GET** /accounts/{koronaAccountId}/ticketDefinitions/{ticketDefinitionIdOrNumber} | lists the ticket definition
[**get_ticket_definitions**](TicketingApi.md#get_ticket_definitions) | **GET** /accounts/{koronaAccountId}/ticketDefinitions | lists all ticket definitions


# **get_entry_gate**
> EntryGate get_entry_gate(korona_account_id, entry_gate_id_or_number)

lists the entry gate



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

entry_gate_id_or_number = "entry_gate_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the entry gate
  result = api_instance.get_entry_gate(korona_account_id, entry_gate_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_entry_gate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **entry_gate_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**EntryGate**](EntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_entry_gates**
> ResultListEntryGate get_entry_gates(korona_account_id, opts)

lists all entry gates



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all entry gates
  result = api_instance.get_entry_gates(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_entry_gates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListEntryGate**](ResultListEntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_event**
> Event get_event(korona_account_id, event_id_or_number)

lists the event



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

event_id_or_number = "event_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the event
  result = api_instance.get_event(korona_account_id, event_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **event_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Event**](Event.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_events**
> ResultListEvent get_events(korona_account_id, opts)

lists all events



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all events
  result = api_instance.get_events(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListEvent**](ResultListEvent.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_ticket_definition**
> TicketDefinition get_ticket_definition(korona_account_id, ticket_definition_id_or_number)

lists the ticket definition



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

ticket_definition_id_or_number = "ticket_definition_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the ticket definition
  result = api_instance.get_ticket_definition(korona_account_id, ticket_definition_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_ticket_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **ticket_definition_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**TicketDefinition**](TicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_ticket_definitions**
> ResultListTicketDefinition get_ticket_definitions(korona_account_id, opts)

lists all ticket definitions



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::TicketingApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all ticket definitions
  result = api_instance.get_ticket_definitions(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TicketingApi->get_ticket_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListTicketDefinition**](ResultListTicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



