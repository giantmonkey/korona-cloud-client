# KoronaCloudClient::TicketingApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_creation_task**](TicketingApi.md#add_creation_task) | **POST** /accounts/{koronaAccountId}/ticketCreation | adds a creation task |
| [**add_entry_gates**](TicketingApi.md#add_entry_gates) | **POST** /accounts/{koronaAccountId}/entryGates | adds a batch of new entry gates |
| [**add_events**](TicketingApi.md#add_events) | **POST** /accounts/{koronaAccountId}/events | adds a batch of new events |
| [**add_or_update_attendances**](TicketingApi.md#add_or_update_attendances) | **POST** /accounts/{koronaAccountId}/attendances | updates/adds attendances |
| [**add_ticket_definitions**](TicketingApi.md#add_ticket_definitions) | **POST** /accounts/{koronaAccountId}/ticketDefinitions | adds a batch of new ticket definitions |
| [**cancel_attendance**](TicketingApi.md#cancel_attendance) | **DELETE** /accounts/{koronaAccountId}/attendances/{attendanceId} | cancel the attendance |
| [**delete_entry_gates**](TicketingApi.md#delete_entry_gates) | **DELETE** /accounts/{koronaAccountId}/entryGates | deletes a batch of entry gates |
| [**delete_event**](TicketingApi.md#delete_event) | **DELETE** /accounts/{koronaAccountId}/events/{eventId} | deletes the single event |
| [**delete_ticket_definition**](TicketingApi.md#delete_ticket_definition) | **DELETE** /accounts/{koronaAccountId}/ticketDefinitions/{ticketDefinitionId} | deletes the single ticket definition |
| [**delete_ticket_definitions**](TicketingApi.md#delete_ticket_definitions) | **DELETE** /accounts/{koronaAccountId}/ticketDefinitions | deletes a batch of ticket definitions |
| [**get_attendance**](TicketingApi.md#get_attendance) | **GET** /accounts/{koronaAccountId}/attendances/{attendanceId} | returns the single attendance |
| [**get_attendances**](TicketingApi.md#get_attendances) | **GET** /accounts/{koronaAccountId}/attendances | lists all attendances |
| [**get_creation_tasks**](TicketingApi.md#get_creation_tasks) | **GET** /accounts/{koronaAccountId}/ticketCreation | creation tasks, personalization will always be empty for technical reasons |
| [**get_entry_gate**](TicketingApi.md#get_entry_gate) | **GET** /accounts/{koronaAccountId}/entryGates/{entryGateId} | returns the single entry gate |
| [**get_entry_gates**](TicketingApi.md#get_entry_gates) | **GET** /accounts/{koronaAccountId}/entryGates | lists all entry gates |
| [**get_event**](TicketingApi.md#get_event) | **GET** /accounts/{koronaAccountId}/events/{eventId} | returns the single event |
| [**get_events**](TicketingApi.md#get_events) | **GET** /accounts/{koronaAccountId}/events | lists all events |
| [**get_ticket_definition**](TicketingApi.md#get_ticket_definition) | **GET** /accounts/{koronaAccountId}/ticketDefinitions/{ticketDefinitionId} | returns the single ticket definition |
| [**get_ticket_definitions**](TicketingApi.md#get_ticket_definitions) | **GET** /accounts/{koronaAccountId}/ticketDefinitions | lists all ticket definitions |
| [**get_tickets**](TicketingApi.md#get_tickets) | **GET** /accounts/{koronaAccountId}/tickets | lists all tickets |
| [**lock_ticket**](TicketingApi.md#lock_ticket) | **DELETE** /accounts/{koronaAccountId}/tickets/{ticketNumber} | locks the single ticket |
| [**unlock_ticket**](TicketingApi.md#unlock_ticket) | **POST** /accounts/{koronaAccountId}/tickets/{ticketNumber} | unlocks the single ticket |
| [**update_entry_gates**](TicketingApi.md#update_entry_gates) | **PATCH** /accounts/{koronaAccountId}/entryGates | updates a batch of entry gates |
| [**update_event**](TicketingApi.md#update_event) | **PATCH** /accounts/{koronaAccountId}/events/{eventId} | updates the single event |
| [**update_events**](TicketingApi.md#update_events) | **PATCH** /accounts/{koronaAccountId}/events | updates a batch of events |
| [**update_ticket**](TicketingApi.md#update_ticket) | **PATCH** /accounts/{koronaAccountId}/tickets/{ticketNumber} | updates the single ticket |
| [**update_ticket_definitions**](TicketingApi.md#update_ticket_definitions) | **PATCH** /accounts/{koronaAccountId}/ticketDefinitions | updates a batch of ticket definitions |


## add_creation_task

> <AddOrUpdateResult> add_creation_task(korona_account_id, body)

adds a creation task

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = KoronaCloudClient::CreationTask.new # CreationTask | a single ticket creation task

begin
  # adds a creation task
  result = api_instance.add_creation_task(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_creation_task: #{e}"
end
```

#### Using the add_creation_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateResult>, Integer, Hash)> add_creation_task_with_http_info(korona_account_id, body)

```ruby
begin
  # adds a creation task
  data, status_code, headers = api_instance.add_creation_task_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateResult>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_creation_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**CreationTask**](CreationTask.md) | a single ticket creation task |  |

### Return type

[**AddOrUpdateResult**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_entry_gates

> <Array<AddOrUpdateResult>> add_entry_gates(korona_account_id, body, opts)

adds a batch of new entry gates

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EntryGate.new] # Array<EntryGate> | array of new entry gates
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new entry gates
  result = api_instance.add_entry_gates(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_entry_gates: #{e}"
end
```

#### Using the add_entry_gates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_entry_gates_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new entry gates
  data, status_code, headers = api_instance.add_entry_gates_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_entry_gates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;EntryGate&gt;**](EntryGate.md) | array of new entry gates |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_events

> <Array<AddOrUpdateResult>> add_events(korona_account_id, body, opts)

adds a batch of new events

### Examples

```ruby
require 'time'
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
  # adds a batch of new events
  result = api_instance.add_events(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_events: #{e}"
end
```

#### Using the add_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_events_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new events
  data, status_code, headers = api_instance.add_events_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Event&gt;**](Event.md) | an array of new events |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_or_update_attendances

> <Array<AddOrUpdateResult>> add_or_update_attendances(korona_account_id, body)

updates/adds attendances

### Examples

```ruby
require 'time'
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
  # updates/adds attendances
  result = api_instance.add_or_update_attendances(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_or_update_attendances: #{e}"
end
```

#### Using the add_or_update_attendances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_or_update_attendances_with_http_info(korona_account_id, body)

```ruby
begin
  # updates/adds attendances
  data, status_code, headers = api_instance.add_or_update_attendances_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_or_update_attendances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Attendance&gt;**](Attendance.md) | an array of attendances |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_ticket_definitions

> <Array<AddOrUpdateResult>> add_ticket_definitions(korona_account_id, body, opts)

adds a batch of new ticket definitions

### Examples

```ruby
require 'time'
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
  # adds a batch of new ticket definitions
  result = api_instance.add_ticket_definitions(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_ticket_definitions: #{e}"
end
```

#### Using the add_ticket_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_ticket_definitions_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new ticket definitions
  data, status_code, headers = api_instance.add_ticket_definitions_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->add_ticket_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md) | array of new ticket definitions |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

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

### Examples

```ruby
require 'time'
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
  # cancel the attendance
  api_instance.cancel_attendance(korona_account_id, attendance_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->cancel_attendance: #{e}"
end
```

#### Using the cancel_attendance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_attendance_with_http_info(korona_account_id, attendance_id)

```ruby
begin
  # cancel the attendance
  data, status_code, headers = api_instance.cancel_attendance_with_http_info(korona_account_id, attendance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->cancel_attendance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **attendance_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_entry_gates

> <Array<AddOrUpdateResult>> delete_entry_gates(korona_account_id, body)

deletes a batch of entry gates

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EntryGate.new] # Array<EntryGate> | array of existing entry gates (id or number required)

begin
  # deletes a batch of entry gates
  result = api_instance.delete_entry_gates(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_entry_gates: #{e}"
end
```

#### Using the delete_entry_gates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_entry_gates_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of entry gates
  data, status_code, headers = api_instance.delete_entry_gates_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_entry_gates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;EntryGate&gt;**](EntryGate.md) | array of existing entry gates (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_event

> delete_event(korona_account_id, event_id)

deletes the single event

### Examples

```ruby
require 'time'
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
  # deletes the single event
  api_instance.delete_event(korona_account_id, event_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_event: #{e}"
end
```

#### Using the delete_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_event_with_http_info(korona_account_id, event_id)

```ruby
begin
  # deletes the single event
  data, status_code, headers = api_instance.delete_event_with_http_info(korona_account_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **event_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

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

### Examples

```ruby
require 'time'
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
  # deletes the single ticket definition
  api_instance.delete_ticket_definition(korona_account_id, ticket_definition_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_ticket_definition: #{e}"
end
```

#### Using the delete_ticket_definition_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ticket_definition_with_http_info(korona_account_id, ticket_definition_id)

```ruby
begin
  # deletes the single ticket definition
  data, status_code, headers = api_instance.delete_ticket_definition_with_http_info(korona_account_id, ticket_definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_ticket_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **ticket_definition_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ticket_definitions

> <Array<AddOrUpdateResult>> delete_ticket_definitions(korona_account_id, body)

deletes a batch of ticket definitions

### Examples

```ruby
require 'time'
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
  # deletes a batch of ticket definitions
  result = api_instance.delete_ticket_definitions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_ticket_definitions: #{e}"
end
```

#### Using the delete_ticket_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_ticket_definitions_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of ticket definitions
  data, status_code, headers = api_instance.delete_ticket_definitions_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->delete_ticket_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md) | array of existing ticket definitions (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_attendance

> <Attendance> get_attendance(korona_account_id, attendance_id)

returns the single attendance

### Examples

```ruby
require 'time'
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
  # returns the single attendance
  result = api_instance.get_attendance(korona_account_id, attendance_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_attendance: #{e}"
end
```

#### Using the get_attendance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attendance>, Integer, Hash)> get_attendance_with_http_info(korona_account_id, attendance_id)

```ruby
begin
  # returns the single attendance
  data, status_code, headers = api_instance.get_attendance_with_http_info(korona_account_id, attendance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attendance>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_attendance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **attendance_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Attendance**](Attendance.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_attendances

> <ResultListAttendance> get_attendances(korona_account_id, opts)

lists all attendances

### Examples

```ruby
require 'time'
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
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  # lists all attendances
  result = api_instance.get_attendances(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_attendances: #{e}"
end
```

#### Using the get_attendances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListAttendance>, Integer, Hash)> get_attendances_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all attendances
  data, status_code, headers = api_instance.get_attendances_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListAttendance>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_attendances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |

### Return type

[**ResultListAttendance**](ResultListAttendance.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_creation_tasks

> <ResultListCreationTask> get_creation_tasks(korona_account_id, opts)

creation tasks, personalization will always be empty for technical reasons

### Examples

```ruby
require 'time'
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
  creation_time_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | creation time from
  creation_time_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | creation time to
  statuses: ['PREPARED'] # Array<String> | creation task statuses
}

begin
  # creation tasks, personalization will always be empty for technical reasons
  result = api_instance.get_creation_tasks(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_creation_tasks: #{e}"
end
```

#### Using the get_creation_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCreationTask>, Integer, Hash)> get_creation_tasks_with_http_info(korona_account_id, opts)

```ruby
begin
  # creation tasks, personalization will always be empty for technical reasons
  data, status_code, headers = api_instance.get_creation_tasks_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCreationTask>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_creation_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **creation_time_from** | **Time** | creation time from | [optional] |
| **creation_time_to** | **Time** | creation time to | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | creation task statuses | [optional] |

### Return type

[**ResultListCreationTask**](ResultListCreationTask.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entry_gate

> <EntryGate> get_entry_gate(korona_account_id, entry_gate_id)

returns the single entry gate

### Examples

```ruby
require 'time'
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
  # returns the single entry gate
  result = api_instance.get_entry_gate(korona_account_id, entry_gate_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_entry_gate: #{e}"
end
```

#### Using the get_entry_gate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntryGate>, Integer, Hash)> get_entry_gate_with_http_info(korona_account_id, entry_gate_id)

```ruby
begin
  # returns the single entry gate
  data, status_code, headers = api_instance.get_entry_gate_with_http_info(korona_account_id, entry_gate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntryGate>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_entry_gate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **entry_gate_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**EntryGate**](EntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entry_gates

> <ResultListEntryGate> get_entry_gates(korona_account_id, opts)

lists all entry gates

### Examples

```ruby
require 'time'
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
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all entry gates
  result = api_instance.get_entry_gates(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_entry_gates: #{e}"
end
```

#### Using the get_entry_gates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListEntryGate>, Integer, Hash)> get_entry_gates_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all entry gates
  data, status_code, headers = api_instance.get_entry_gates_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListEntryGate>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_entry_gates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListEntryGate**](ResultListEntryGate.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> <Event> get_event(korona_account_id, event_id)

returns the single event

### Examples

```ruby
require 'time'
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
  # returns the single event
  result = api_instance.get_event(korona_account_id, event_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> get_event_with_http_info(korona_account_id, event_id)

```ruby
begin
  # returns the single event
  data, status_code, headers = api_instance.get_event_with_http_info(korona_account_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **event_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Event**](Event.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <ResultListEvent> get_events(korona_account_id, opts)

lists all events

### Examples

```ruby
require 'time'
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
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) start time of the event (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_start_time: Time.parse('2013-10-20T19:20:30+01:00') # Time | max (inclusive) start time of the event (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
}

begin
  # lists all events
  result = api_instance.get_events(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListEvent>, Integer, Hash)> get_events_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all events
  data, status_code, headers = api_instance.get_events_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListEvent>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **min_start_time** | **Time** | min (inclusive) start time of the event (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_start_time** | **Time** | max (inclusive) start time of the event (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |

### Return type

[**ResultListEvent**](ResultListEvent.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_definition

> <TicketDefinition> get_ticket_definition(korona_account_id, ticket_definition_id)

returns the single ticket definition

### Examples

```ruby
require 'time'
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
  # returns the single ticket definition
  result = api_instance.get_ticket_definition(korona_account_id, ticket_definition_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_ticket_definition: #{e}"
end
```

#### Using the get_ticket_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TicketDefinition>, Integer, Hash)> get_ticket_definition_with_http_info(korona_account_id, ticket_definition_id)

```ruby
begin
  # returns the single ticket definition
  data, status_code, headers = api_instance.get_ticket_definition_with_http_info(korona_account_id, ticket_definition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TicketDefinition>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_ticket_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **ticket_definition_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**TicketDefinition**](TicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_definitions

> <ResultListTicketDefinition> get_ticket_definitions(korona_account_id, opts)

lists all ticket definitions

### Examples

```ruby
require 'time'
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
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  # lists all ticket definitions
  result = api_instance.get_ticket_definitions(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_ticket_definitions: #{e}"
end
```

#### Using the get_ticket_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListTicketDefinition>, Integer, Hash)> get_ticket_definitions_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all ticket definitions
  data, status_code, headers = api_instance.get_ticket_definitions_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListTicketDefinition>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_ticket_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |

### Return type

[**ResultListTicketDefinition**](ResultListTicketDefinition.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tickets

> <ResultListTicket> get_tickets(korona_account_id, page, size, opts)

lists all tickets

### Examples

```ruby
require 'time'
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
  creation_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | creation date from
  creation_date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | creation date to
  locked: true, # Boolean | is ticket locked
  owner_last_name: 'owner_last_name_example', # String | last name of owner
  owner_first_name: 'owner_first_name_example', # String | first name of owner
  load_owner_image: true # Boolean | set true if you want to load the owner's image
}

begin
  # lists all tickets
  result = api_instance.get_tickets(korona_account_id, page, size, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_tickets: #{e}"
end
```

#### Using the get_tickets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListTicket>, Integer, Hash)> get_tickets_with_http_info(korona_account_id, page, size, opts)

```ruby
begin
  # lists all tickets
  data, status_code, headers = api_instance.get_tickets_with_http_info(korona_account_id, page, size, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListTicket>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->get_tickets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch |  |
| **size** | **Integer** | amount of objects to return per page |  |
| **ticket_number** | **String** | ticket number | [optional] |
| **customer_number** | **String** | customer number | [optional] |
| **creation_date_from** | **Time** | creation date from | [optional] |
| **creation_date_to** | **Time** | creation date to | [optional] |
| **locked** | **Boolean** | is ticket locked | [optional] |
| **owner_last_name** | **String** | last name of owner | [optional] |
| **owner_first_name** | **String** | first name of owner | [optional] |
| **load_owner_image** | **Boolean** | set true if you want to load the owner&#39;s image | [optional] |

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

### Examples

```ruby
require 'time'
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
  # locks the single ticket
  api_instance.lock_ticket(korona_account_id, ticket_number)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->lock_ticket: #{e}"
end
```

#### Using the lock_ticket_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> lock_ticket_with_http_info(korona_account_id, ticket_number)

```ruby
begin
  # locks the single ticket
  data, status_code, headers = api_instance.lock_ticket_with_http_info(korona_account_id, ticket_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->lock_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **ticket_number** | **String** | id of the related object (important: id should match the uuid-format) |  |

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

### Examples

```ruby
require 'time'
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
  # unlocks the single ticket
  api_instance.unlock_ticket(korona_account_id, ticket_number)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->unlock_ticket: #{e}"
end
```

#### Using the unlock_ticket_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlock_ticket_with_http_info(korona_account_id, ticket_number)

```ruby
begin
  # unlocks the single ticket
  data, status_code, headers = api_instance.unlock_ticket_with_http_info(korona_account_id, ticket_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->unlock_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **ticket_number** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_entry_gates

> <Array<AddOrUpdateResult>> update_entry_gates(korona_account_id, body)

updates a batch of entry gates

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::TicketingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EntryGate.new] # Array<EntryGate> | array of existing entry gates (id or number required)

begin
  # updates a batch of entry gates
  result = api_instance.update_entry_gates(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_entry_gates: #{e}"
end
```

#### Using the update_entry_gates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_entry_gates_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of entry gates
  data, status_code, headers = api_instance.update_entry_gates_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_entry_gates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;EntryGate&gt;**](EntryGate.md) | array of existing entry gates (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_event

> update_event(korona_account_id, event_id, body)

updates the single event

### Examples

```ruby
require 'time'
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
  # updates the single event
  api_instance.update_event(korona_account_id, event_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_event: #{e}"
end
```

#### Using the update_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_event_with_http_info(korona_account_id, event_id, body)

```ruby
begin
  # updates the single event
  data, status_code, headers = api_instance.update_event_with_http_info(korona_account_id, event_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **event_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Event**](Event.md) | the properties to update of the event |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_events

> <Array<AddOrUpdateResult>> update_events(korona_account_id, body)

updates a batch of events

[number] must be set in the objects, otherwise the object cannot be updated

### Examples

```ruby
require 'time'
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
  # updates a batch of events
  result = api_instance.update_events(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_events: #{e}"
end
```

#### Using the update_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_events_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of events
  data, status_code, headers = api_instance.update_events_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Event&gt;**](Event.md) | an array of existing events |  |

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

### Examples

```ruby
require 'time'
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
  # updates the single ticket
  api_instance.update_ticket(korona_account_id, ticket_number, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_ticket: #{e}"
end
```

#### Using the update_ticket_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_ticket_with_http_info(korona_account_id, ticket_number, opts)

```ruby
begin
  # updates the single ticket
  data, status_code, headers = api_instance.update_ticket_with_http_info(korona_account_id, ticket_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_ticket_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **ticket_number** | **String** | old ticket number |  |
| **new_ticket_number** | **String** | new ticket number | [optional] |
| **first_name** | **String** | ticket owner&#39;s first name | [optional] |
| **last_name** | **String** | ticket owner&#39;s last name | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ticket_definitions

> <Array<AddOrUpdateResult>> update_ticket_definitions(korona_account_id, body)

updates a batch of ticket definitions

### Examples

```ruby
require 'time'
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
  # updates a batch of ticket definitions
  result = api_instance.update_ticket_definitions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_ticket_definitions: #{e}"
end
```

#### Using the update_ticket_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_ticket_definitions_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of ticket definitions
  data, status_code, headers = api_instance.update_ticket_definitions_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketingApi->update_ticket_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;TicketDefinition&gt;**](TicketDefinition.md) | array of existing ticket definitions (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

