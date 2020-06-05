# KoronaCloudClient::TimeTrackingApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_entities**](TimeTrackingApi.md#add_entities) | **POST** /accounts/{koronaAccountId}/timeTrackingEntities | adds a batch of new time tracking entities
[**add_entries**](TimeTrackingApi.md#add_entries) | **POST** /accounts/{koronaAccountId}/timeTrackingEntries | adds a batch of new time tracking entries
[**get_entities**](TimeTrackingApi.md#get_entities) | **GET** /accounts/{koronaAccountId}/timeTrackingEntities | lists time tracking entities
[**get_entries**](TimeTrackingApi.md#get_entries) | **GET** /accounts/{koronaAccountId}/timeTrackingEntries | lists time tracking entries
[**get_time_tracking_entity**](TimeTrackingApi.md#get_time_tracking_entity) | **GET** /accounts/{koronaAccountId}/timeTrackingEntities/{timeTrackingEntityId} | returns a single time tracking entity
[**get_time_tracking_entry**](TimeTrackingApi.md#get_time_tracking_entry) | **GET** /accounts/{koronaAccountId}/timeTrackingEntries/{timeTrackingEntryId} | returns a single time tracking entry



## add_entities

> Array&lt;AddOrUpdateResult&gt; add_entities(korona_account_id, body, opts)

adds a batch of new time tracking entities

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::TimeTrackingEntity.new] # Array<TimeTrackingEntity> | array of new time tracking entities
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new time tracking entities
  result = api_instance.add_entities(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->add_entities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;TimeTrackingEntity&gt;**](TimeTrackingEntity.md)| array of new time tracking entities | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_entries

> Array&lt;AddOrUpdateResult&gt; add_entries(korona_account_id, body, opts)

adds a batch of new time tracking entries

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::TimeTrackingEntry.new] # Array<TimeTrackingEntry> | array of new time tracking entries
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new time tracking entries
  result = api_instance.add_entries(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->add_entries: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;TimeTrackingEntry&gt;**](TimeTrackingEntry.md)| array of new time tracking entries | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_entities

> ResultListTimeTrackingEntity get_entities(korona_account_id, opts)

lists time tracking entities

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
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
  #lists time tracking entities
  result = api_instance.get_entities(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->get_entities: #{e}"
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

[**ResultListTimeTrackingEntity**](ResultListTimeTrackingEntity.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entries

> ResultListTimeTrackingEntry get_entries(korona_account_id, opts)

lists time tracking entries

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  time_tracking_entity: 'time_tracking_entity_example', # String | time tracking entity id to filter by
  cashier: 'cashier_example', # String | cashier id to filter by
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  min_timestamp: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) timestamp (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_timestamp: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) timestamp (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists time tracking entries
  result = api_instance.get_entries(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->get_entries: #{e}"
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
 **time_tracking_entity** | **String**| time tracking entity id to filter by | [optional] 
 **cashier** | **String**| cashier id to filter by | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **min_timestamp** | **DateTime**| min (inclusive) timestamp (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_timestamp** | **DateTime**| max (inclusive) timestamp (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListTimeTrackingEntry**](ResultListTimeTrackingEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_time_tracking_entity

> TimeTrackingEntity get_time_tracking_entity(korona_account_id, time_tracking_entity_id)

returns a single time tracking entity

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
time_tracking_entity_id = 'time_tracking_entity_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns a single time tracking entity
  result = api_instance.get_time_tracking_entity(korona_account_id, time_tracking_entity_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->get_time_tracking_entity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **time_tracking_entity_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**TimeTrackingEntity**](TimeTrackingEntity.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_time_tracking_entry

> TimeTrackingEntry get_time_tracking_entry(korona_account_id, time_tracking_entry_id)

returns a single time tracking entry

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

api_instance = KoronaCloudClient::TimeTrackingApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
time_tracking_entry_id = 'time_tracking_entry_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns a single time tracking entry
  result = api_instance.get_time_tracking_entry(korona_account_id, time_tracking_entry_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling TimeTrackingApi->get_time_tracking_entry: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **time_tracking_entry_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**TimeTrackingEntry**](TimeTrackingEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

