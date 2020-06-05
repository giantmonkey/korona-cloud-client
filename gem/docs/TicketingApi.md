# KoronaCloudClient::TicketingApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_events**](TicketingApi.md#add_events) | **POST** /accounts/{koronaAccountId}/events | adds a batch of new events
[**add_or_update_attendances**](TicketingApi.md#add_or_update_attendances) | **POST** /accounts/{koronaAccountId}/attendance | updates/adds attendances
[**add_ticket_definitions**](TicketingApi.md#add_ticket_definitions) | **POST** /accounts/{koronaAccountId}/ticketDefinitions | adds a batch of new ticket definitions
[**cancel_attendance**](TicketingApi.md#cancel_attendance) | **DELETE** /accounts/{koronaAccountId}/attendance/{attendanceId} | cancel the attendance
[**delete_event**](TicketingApi.md#delete_event) | **DELETE** /accounts/{koronaAccountId}/events/{eventId} | deletes the single event
[**delete_ticket_definition**](TicketingApi.md#delete_ticket_definition) | **DELETE** /accounts/{koronaAccountId}/ticketDefinitions/{ticketDefinitionId} | deletes the single ticket definition
[**delete_ticket_definitions**](TicketingApi.md#delete_ticket_definitions) | **DELETE** /accounts/{koronaAccountId}/ticketDefinitions | deletes a batch of ticket definitions
[**get_attendances**](TicketingApi.md#get_attendances) | **GET** /accounts/{koronaAccountId}/attendance | lists all attendances
[**get_entry_gate**](TicketingApi.md#get_entry_gate) | **GET** /accounts/{koronaAccountId}/entryGates/{entryGateId} | returns the single entry gate
[**get_entry_gates**](TicketingApi.md#get_entry_gates) | **GET** /accounts/{koronaAccountId}/entryGates | lists all entry gates
[**get_event**](TicketingApi.md#get_event) | **GET** /accounts/{koronaAccountId}/events/{eventId} | returns the single event
[**get_events**](TicketingApi.md#get_events) | **GET** /accounts/{koronaAccountId}/events | lists all events
[**get_ticket_definition**](TicketingApi.md#get_ticket_definition) | **GET** /accounts/{koronaAccountId}/ticketDefinitions/{ticketDefinitionId} | returns the single ticket definition
[**get_ticket_definitions**](TicketingApi.md#get_ticket_definitions) | **GET** /accounts/{koronaAccountId}/ticketDefinitions | lists all ticket definitions
[**get_tickets**](TicketingApi.md#get_tickets) | **GET** /accounts/{koronaAccountId}/tickets | lists all tickets
[**lock_ticket**](TicketingApi.md#lock_ticket) | **DELETE** /accounts/{koronaAccountId}/tickets/{ticketNumber} | locks the single ticket
[**unlock_ticket**](TicketingApi.md#unlock_ticket) | **POST** /accounts/{koronaAccountId}/tickets/{ticketNumber} | unlocks the single ticket
[**update_event**](TicketingApi.md#update_event) | **PATCH** /accounts/{koronaAccountId}/events/{eventId} | updates the single event
[**update_events**](TicketingApi.md#update_events) | **PATCH** /accounts/{koronaAccountId}/events | updates a batch of events
[**update_ticket**](TicketingApi.md#update_ticket) | **PATCH** /accounts/{koronaAccountId}/tickets/{ticketNumber} | updates the single ticket
[**update_ticket_definitions**](TicketingApi.md#update_ticket_definitions) | **PATCH** /accounts/{koronaAccountId}/ticketDefinitions | updates a batch of ticket definitions



## add_events

> Array&lt;AddOrUpdateResult&gt; add_events(korona_account_id, body, opts)

adds a batch of new events

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Event.new] # Array<Event> | an array of new events
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new events
  result = api_instance.add_events(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->add_events: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Event&gt;**](Event.md)| an array of new events | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_or_update_attendances

> Array&lt;AddOrUpdateResult&gt; add_or_update_attendances(korona_account_id, body)

updates/adds attendances

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Attendance.new] # Array<Attendance> | an array of attendances

begin
  #updates/adds attendances
  result = api_instance.add_or_update_attendances(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->add_or_update_attendances: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Attendance&gt;**](Attendance.md)| an array of attendances | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_ticket_definitions

> Array&lt;AddOrUpdateResult&gt; add_ticket_definitions(korona_account_id, body, opts)

adds a batch of new ticket definitions

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::TicketDefinition.new] # Array<TicketDefinition> | array of new ticket definitions
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new ticket definitions
  result = api_instance.add_ticket_definitions(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->add_ticket_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md)| array of new ticket definitions | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_attendance

> cancel_attendance(korona_account_id, attendance_id)

cancel the attendance

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
attendance_id = 'attendance_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #cancel the attendance
  api_instance.cancel_attendance(korona_account_id, attendance_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->cancel_attendance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **attendance_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_event

> delete_event(korona_account_id, event_id)

deletes the single event

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
event_id = 'event_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single event
  api_instance.delete_event(korona_account_id, event_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->delete_event: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **event_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ticket_definition

> delete_ticket_definition(korona_account_id, ticket_definition_id)

deletes the single ticket definition

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
ticket_definition_id = 'ticket_definition_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single ticket definition
  api_instance.delete_ticket_definition(korona_account_id, ticket_definition_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->delete_ticket_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **ticket_definition_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ticket_definitions

> Array&lt;AddOrUpdateResult&gt; delete_ticket_definitions(korona_account_id, body)

deletes a batch of ticket definitions

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::TicketDefinition.new] # Array<TicketDefinition> | array of existing ticket definitions (id or number required)

begin
  #deletes a batch of ticket definitions
  result = api_instance.delete_ticket_definitions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->delete_ticket_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md)| array of existing ticket definitions (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_attendances

> ResultListAttendance get_attendances(korona_account_id, opts)

lists all attendances

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all attendances
  result = api_instance.get_attendances(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_attendances: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListAttendance**](ResultListAttendance.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entry_gate

> EntryGate get_entry_gate(korona_account_id, entry_gate_id)

returns the single entry gate

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
entry_gate_id = 'entry_gate_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single entry gate
  result = api_instance.get_entry_gate(korona_account_id, entry_gate_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_entry_gate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **entry_gate_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**EntryGate**](EntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entry_gates

> ResultListEntryGate get_entry_gates(korona_account_id, opts)

lists all entry gates

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all entry gates
  result = api_instance.get_entry_gates(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_entry_gates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListEntryGate**](ResultListEntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> Event get_event(korona_account_id, event_id)

returns the single event

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
event_id = 'event_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single event
  result = api_instance.get_event(korona_account_id, event_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_event: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **event_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Event**](Event.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> ResultListEvent get_events(korona_account_id, opts)

lists all events

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all events
  result = api_instance.get_events(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_events: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListEvent**](ResultListEvent.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_definition

> TicketDefinition get_ticket_definition(korona_account_id, ticket_definition_id)

returns the single ticket definition

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
ticket_definition_id = 'ticket_definition_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single ticket definition
  result = api_instance.get_ticket_definition(korona_account_id, ticket_definition_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_ticket_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **ticket_definition_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**TicketDefinition**](TicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_definitions

> ResultListTicketDefinition get_ticket_definitions(korona_account_id, opts)

lists all ticket definitions

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all ticket definitions
  result = api_instance.get_ticket_definitions(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_ticket_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListTicketDefinition**](ResultListTicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tickets

> ResultListTicket get_tickets(korona_account_id, page, size, opts)

lists all tickets

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
page = 56 # Integer | number of the page to fetch
size = 56 # Integer | amount of objects to return per page
opts = {
  ticket_number: 'ticket_number_example', # String | ticket number
  customer_number: 'customer_number_example', # String | customer number
  creation_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | creation date from
  creation_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | creation date to
  locked: true, # Boolean | is ticket locked
  owner_last_name: 'owner_last_name_example', # String | last name of owner
  owner_first_name: 'owner_first_name_example', # String | first name of owner
  load_owner_image: true # Boolean | set true if you want to load the owner's image
}

begin
  #lists all tickets
  result = api_instance.get_tickets(korona_account_id, page, size, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->get_tickets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | 
 **size** | **Integer**| amount of objects to return per page | 
 **ticket_number** | **String**| ticket number | [optional] 
 **customer_number** | **String**| customer number | [optional] 
 **creation_date_from** | **DateTime**| creation date from | [optional] 
 **creation_date_to** | **DateTime**| creation date to | [optional] 
 **locked** | **Boolean**| is ticket locked | [optional] 
 **owner_last_name** | **String**| last name of owner | [optional] 
 **owner_first_name** | **String**| first name of owner | [optional] 
 **load_owner_image** | **Boolean**| set true if you want to load the owner&#39;s image | [optional] 

### Return type

[**ResultListTicket**](ResultListTicket.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_ticket

> lock_ticket(korona_account_id, ticket_number)

locks the single ticket

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
ticket_number = 'ticket_number_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #locks the single ticket
  api_instance.lock_ticket(korona_account_id, ticket_number)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->lock_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **ticket_number** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlock_ticket

> unlock_ticket(korona_account_id, ticket_number)

unlocks the single ticket

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
ticket_number = 'ticket_number_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #unlocks the single ticket
  api_instance.unlock_ticket(korona_account_id, ticket_number)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->unlock_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **ticket_number** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event

> update_event(korona_account_id, event_id, body)

updates the single event

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
event_id = 'event_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Event.new # Event | the properties to update of the event

begin
  #updates the single event
  api_instance.update_event(korona_account_id, event_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->update_event: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **event_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Event**](Event.md)| the properties to update of the event | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_events

> Array&lt;AddOrUpdateResult&gt; update_events(korona_account_id, body)

updates a batch of events

[number] must be set in the objects, otherwise the object cannot be updated

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Event.new] # Array<Event> | an array of existing events

begin
  #updates a batch of events
  result = api_instance.update_events(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->update_events: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Event&gt;**](Event.md)| an array of existing events | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ticket

> update_ticket(korona_account_id, ticket_number, opts)

updates the single ticket

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
ticket_number = 'ticket_number_example' # String | old ticket number
opts = {
  new_ticket_number: 'new_ticket_number_example', # String | new ticket number
  first_name: 'first_name_example', # String | ticket owner's first name
  last_name: 'last_name_example' # String | ticket owner's last name
}

begin
  #updates the single ticket
  api_instance.update_ticket(korona_account_id, ticket_number, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->update_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **ticket_number** | **String**| old ticket number | 
 **new_ticket_number** | **String**| new ticket number | [optional] 
 **first_name** | **String**| ticket owner&#39;s first name | [optional] 
 **last_name** | **String**| ticket owner&#39;s last name | [optional] 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ticket_definitions

> Array&lt;AddOrUpdateResult&gt; update_ticket_definitions(korona_account_id, body)

updates a batch of ticket definitions

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::TicketDefinition.new] # Array<TicketDefinition> | array of existing ticket definitions (id or number required)

begin
  #updates a batch of ticket definitions
  result = api_instance.update_ticket_definitions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TicketingApi->update_ticket_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md)| array of existing ticket definitions (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

