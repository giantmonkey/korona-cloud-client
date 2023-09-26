# KoronaCloudClient::ExternalSystemCallsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_external_system_calls**](ExternalSystemCallsApi.md#add_external_system_calls) | **POST** /accounts/{koronaAccountId}/externalSystemCalls |  |
| [**delete_external_system_call**](ExternalSystemCallsApi.md#delete_external_system_call) | **DELETE** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} |  |
| [**delete_external_system_calls**](ExternalSystemCallsApi.md#delete_external_system_calls) | **DELETE** /accounts/{koronaAccountId}/externalSystemCalls |  |
| [**get_external_system_call**](ExternalSystemCallsApi.md#get_external_system_call) | **GET** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} |  |
| [**get_external_system_calls**](ExternalSystemCallsApi.md#get_external_system_calls) | **GET** /accounts/{koronaAccountId}/externalSystemCalls |  |
| [**update_external_system_call**](ExternalSystemCallsApi.md#update_external_system_call) | **PATCH** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} |  |
| [**update_external_system_calls**](ExternalSystemCallsApi.md#update_external_system_calls) | **PATCH** /accounts/{koronaAccountId}/externalSystemCalls |  |


## add_external_system_calls

> <Array<AddOrUpdateResult>> add_external_system_calls(korona_account_id, external_system_call, opts)



adds a batch of new external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of new external system calls
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_external_system_calls(korona_account_id, external_system_call, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->add_external_system_calls: #{e}"
end
```

#### Using the add_external_system_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_external_system_calls_with_http_info(korona_account_id, external_system_call, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_external_system_calls_with_http_info(korona_account_id, external_system_call, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->add_external_system_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md) | array of new external system calls |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_system_call

> delete_external_system_call(korona_account_id, external_system_call_id)



deletes a single external system call

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_external_system_call(korona_account_id, external_system_call_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->delete_external_system_call: #{e}"
end
```

#### Using the delete_external_system_call_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_external_system_call_with_http_info(korona_account_id, external_system_call_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_external_system_call_with_http_info(korona_account_id, external_system_call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->delete_external_system_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_external_system_calls

> <Array<AddOrUpdateResult>> delete_external_system_calls(korona_account_id, external_system_call)



deletes a batch of external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of existing external system calls (id or number required)

begin
  
  result = api_instance.delete_external_system_calls(korona_account_id, external_system_call)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->delete_external_system_calls: #{e}"
end
```

#### Using the delete_external_system_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_external_system_calls_with_http_info(korona_account_id, external_system_call)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_external_system_calls_with_http_info(korona_account_id, external_system_call)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->delete_external_system_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md) | array of existing external system calls (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_system_call

> <ExternalSystemCall> get_external_system_call(korona_account_id, external_system_call_id)



returns a single external system call

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_external_system_call(korona_account_id, external_system_call_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->get_external_system_call: #{e}"
end
```

#### Using the get_external_system_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalSystemCall>, Integer, Hash)> get_external_system_call_with_http_info(korona_account_id, external_system_call_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_external_system_call_with_http_info(korona_account_id, external_system_call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalSystemCall>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->get_external_system_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ExternalSystemCall**](ExternalSystemCall.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_system_calls

> <ResultListExternalSystemCall> get_external_system_calls(korona_account_id, opts)



lists all external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
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
  
  result = api_instance.get_external_system_calls(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->get_external_system_calls: #{e}"
end
```

#### Using the get_external_system_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListExternalSystemCall>, Integer, Hash)> get_external_system_calls_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_external_system_calls_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListExternalSystemCall>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->get_external_system_calls_with_http_info: #{e}"
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

[**ResultListExternalSystemCall**](ResultListExternalSystemCall.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_system_call

> update_external_system_call(korona_account_id, external_system_call_id, external_system_call)



updates the single external system call

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)
external_system_call = KoronaCloudClient::ExternalSystemCall.new # ExternalSystemCall | the properties to update of the external system call

begin
  
  api_instance.update_external_system_call(korona_account_id, external_system_call_id, external_system_call)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->update_external_system_call: #{e}"
end
```

#### Using the update_external_system_call_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_external_system_call_with_http_info(korona_account_id, external_system_call_id, external_system_call)

```ruby
begin
  
  data, status_code, headers = api_instance.update_external_system_call_with_http_info(korona_account_id, external_system_call_id, external_system_call)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->update_external_system_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **external_system_call** | [**ExternalSystemCall**](ExternalSystemCall.md) | the properties to update of the external system call |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_external_system_calls

> <Array<AddOrUpdateResult>> update_external_system_calls(korona_account_id, external_system_call)



updates a batch of external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of existing external system calls (id or number required)

begin
  
  result = api_instance.update_external_system_calls(korona_account_id, external_system_call)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->update_external_system_calls: #{e}"
end
```

#### Using the update_external_system_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_external_system_calls_with_http_info(korona_account_id, external_system_call)

```ruby
begin
  
  data, status_code, headers = api_instance.update_external_system_calls_with_http_info(korona_account_id, external_system_call)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalSystemCallsApi->update_external_system_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **external_system_call** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md) | array of existing external system calls (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

