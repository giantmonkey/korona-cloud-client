# KoronaCloudClient::ExternalSystemCallsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_external_system_calls**](ExternalSystemCallsApi.md#add_external_system_calls) | **POST** /accounts/{koronaAccountId}/externalSystemCalls | adds a batch of new external system calls
[**delete_external_system_call**](ExternalSystemCallsApi.md#delete_external_system_call) | **DELETE** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} | deletes a single external system call
[**delete_external_system_calls**](ExternalSystemCallsApi.md#delete_external_system_calls) | **DELETE** /accounts/{koronaAccountId}/externalSystemCalls | deletes a batch of external system calls
[**get_external_system_call**](ExternalSystemCallsApi.md#get_external_system_call) | **GET** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} | returns a single external system call
[**get_external_system_calls**](ExternalSystemCallsApi.md#get_external_system_calls) | **GET** /accounts/{koronaAccountId}/externalSystemCalls | lists all external system calls
[**update_external_system_call**](ExternalSystemCallsApi.md#update_external_system_call) | **PATCH** /accounts/{koronaAccountId}/externalSystemCalls/{externalSystemCallId} | updates the single external system call
[**update_external_system_calls**](ExternalSystemCallsApi.md#update_external_system_calls) | **PATCH** /accounts/{koronaAccountId}/externalSystemCalls | updates a batch of external system calls



## add_external_system_calls

> Array&lt;AddOrUpdateResult&gt; add_external_system_calls(korona_account_id, body, opts)

adds a batch of new external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of new external system calls
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new external system calls
  result = api_instance.add_external_system_calls(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->add_external_system_calls: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md)| array of new external system calls | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes a single external system call
  api_instance.delete_external_system_call(korona_account_id, external_system_call_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->delete_external_system_call: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **external_system_call_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_external_system_calls

> Array&lt;AddOrUpdateResult&gt; delete_external_system_calls(korona_account_id, body)

deletes a batch of external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of existing external system calls (id or number required)

begin
  #deletes a batch of external system calls
  result = api_instance.delete_external_system_calls(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->delete_external_system_calls: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md)| array of existing external system calls (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_system_call

> ExternalSystemCall get_external_system_call(korona_account_id, external_system_call_id)

returns a single external system call

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns a single external system call
  result = api_instance.get_external_system_call(korona_account_id, external_system_call_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->get_external_system_call: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **external_system_call_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**ExternalSystemCall**](ExternalSystemCall.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_system_calls

> ResultListExternalSystemCall get_external_system_calls(korona_account_id, opts)

lists all external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
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
  #lists all external system calls
  result = api_instance.get_external_system_calls(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->get_external_system_calls: #{e}"
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

[**ResultListExternalSystemCall**](ResultListExternalSystemCall.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_system_call

> update_external_system_call(korona_account_id, external_system_call_id, body)

updates the single external system call

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
external_system_call_id = 'external_system_call_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::ExternalSystemCall.new # ExternalSystemCall | the properties to update of the external system call

begin
  #updates the single external system call
  api_instance.update_external_system_call(korona_account_id, external_system_call_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->update_external_system_call: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **external_system_call_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**ExternalSystemCall**](ExternalSystemCall.md)| the properties to update of the external system call | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_external_system_calls

> Array&lt;AddOrUpdateResult&gt; update_external_system_calls(korona_account_id, body)

updates a batch of external system calls

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

api_instance = KoronaCloudClient::ExternalSystemCallsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ExternalSystemCall.new] # Array<ExternalSystemCall> | array of existing external system calls (id or number required)

begin
  #updates a batch of external system calls
  result = api_instance.update_external_system_calls(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ExternalSystemCallsApi->update_external_system_calls: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md)| array of existing external system calls (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

