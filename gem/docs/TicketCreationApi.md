# KoronaCloudClient::TicketCreationApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_creation_task**](TicketCreationApi.md#add_creation_task) | **POST** /accounts/{koronaAccountId}/ticketCreation | adds a creation task |
| [**get_creation_tasks**](TicketCreationApi.md#get_creation_tasks) | **GET** /accounts/{koronaAccountId}/ticketCreation | creation tasks, personalization will always be empty for technical reasons |


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

api_instance = KoronaCloudClient::TicketCreationApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = KoronaCloudClient::CreationTask.new # CreationTask | a single ticket creation task

begin
  # adds a creation task
  result = api_instance.add_creation_task(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TicketCreationApi->add_creation_task: #{e}"
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
  puts "Error when calling TicketCreationApi->add_creation_task_with_http_info: #{e}"
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

api_instance = KoronaCloudClient::TicketCreationApi.new
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
  puts "Error when calling TicketCreationApi->get_creation_tasks: #{e}"
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
  puts "Error when calling TicketCreationApi->get_creation_tasks_with_http_info: #{e}"
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

