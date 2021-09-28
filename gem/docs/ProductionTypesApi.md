# KoronaCloudClient::ProductionTypesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_production_types**](ProductionTypesApi.md#add_production_types) | **POST** /accounts/{koronaAccountId}/productionTypes | adds a batch of new production types |
| [**delete_production_types**](ProductionTypesApi.md#delete_production_types) | **DELETE** /accounts/{koronaAccountId}/productionTypes | deletes a batch of production types |
| [**get_production_type**](ProductionTypesApi.md#get_production_type) | **GET** /accounts/{koronaAccountId}/productionTypes/{productionTypeId} | returns the single production type |
| [**get_production_types**](ProductionTypesApi.md#get_production_types) | **GET** /accounts/{koronaAccountId}/productionTypes | lists all production types |
| [**update_production_types**](ProductionTypesApi.md#update_production_types) | **PATCH** /accounts/{koronaAccountId}/productionTypes | updates a batch of production types |


## add_production_types

> <Array<AddOrUpdateResult>> add_production_types(korona_account_id, body, opts)

adds a batch of new production types

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

api_instance = KoronaCloudClient::ProductionTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ProductionType.new] # Array<ProductionType> | array of new production types
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new production types
  result = api_instance.add_production_types(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->add_production_types: #{e}"
end
```

#### Using the add_production_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_production_types_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new production types
  data, status_code, headers = api_instance.add_production_types_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->add_production_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ProductionType&gt;**](ProductionType.md) | array of new production types |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_production_types

> <Array<AddOrUpdateResult>> delete_production_types(korona_account_id, body)

deletes a batch of production types

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

api_instance = KoronaCloudClient::ProductionTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ProductionType.new] # Array<ProductionType> | array of existing production types (id or number required)

begin
  # deletes a batch of production types
  result = api_instance.delete_production_types(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->delete_production_types: #{e}"
end
```

#### Using the delete_production_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_production_types_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of production types
  data, status_code, headers = api_instance.delete_production_types_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->delete_production_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ProductionType&gt;**](ProductionType.md) | array of existing production types (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_production_type

> <ProductionType> get_production_type(korona_account_id, production_type_id)

returns the single production type

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

api_instance = KoronaCloudClient::ProductionTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
production_type_id = 'production_type_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single production type
  result = api_instance.get_production_type(korona_account_id, production_type_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->get_production_type: #{e}"
end
```

#### Using the get_production_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductionType>, Integer, Hash)> get_production_type_with_http_info(korona_account_id, production_type_id)

```ruby
begin
  # returns the single production type
  data, status_code, headers = api_instance.get_production_type_with_http_info(korona_account_id, production_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductionType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->get_production_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **production_type_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ProductionType**](ProductionType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_production_types

> <ResultListProductionType> get_production_types(korona_account_id, opts)

lists all production types

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

api_instance = KoronaCloudClient::ProductionTypesApi.new
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
  # lists all production types
  result = api_instance.get_production_types(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->get_production_types: #{e}"
end
```

#### Using the get_production_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListProductionType>, Integer, Hash)> get_production_types_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all production types
  data, status_code, headers = api_instance.get_production_types_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListProductionType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->get_production_types_with_http_info: #{e}"
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

[**ResultListProductionType**](ResultListProductionType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_production_types

> <Array<AddOrUpdateResult>> update_production_types(korona_account_id, body)

updates a batch of production types

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

api_instance = KoronaCloudClient::ProductionTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ProductionType.new] # Array<ProductionType> | array of existing production types (id or number required)

begin
  # updates a batch of production types
  result = api_instance.update_production_types(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->update_production_types: #{e}"
end
```

#### Using the update_production_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_production_types_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of production types
  data, status_code, headers = api_instance.update_production_types_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ProductionTypesApi->update_production_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ProductionType&gt;**](ProductionType.md) | array of existing production types (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

