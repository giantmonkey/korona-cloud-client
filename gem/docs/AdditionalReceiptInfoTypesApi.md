# KoronaCloudClient::AdditionalReceiptInfoTypesApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_additional_receipt_info_types**](AdditionalReceiptInfoTypesApi.md#add_additional_receipt_info_types) | **POST** /accounts/{koronaAccountId}/additionalReceiptInfoTypes |  |
| [**delete_additional_receipt_info_type**](AdditionalReceiptInfoTypesApi.md#delete_additional_receipt_info_type) | **DELETE** /accounts/{koronaAccountId}/additionalReceiptInfoTypes/{additionalReceiptInfoTypeId} |  |
| [**delete_additional_receipt_info_types**](AdditionalReceiptInfoTypesApi.md#delete_additional_receipt_info_types) | **DELETE** /accounts/{koronaAccountId}/additionalReceiptInfoTypes |  |
| [**get_additional_receipt_info_type**](AdditionalReceiptInfoTypesApi.md#get_additional_receipt_info_type) | **GET** /accounts/{koronaAccountId}/additionalReceiptInfoTypes/{additionalReceiptInfoTypeId} |  |
| [**get_additional_receipt_info_types**](AdditionalReceiptInfoTypesApi.md#get_additional_receipt_info_types) | **GET** /accounts/{koronaAccountId}/additionalReceiptInfoTypes |  |
| [**update_additional_receipt_info_type**](AdditionalReceiptInfoTypesApi.md#update_additional_receipt_info_type) | **PATCH** /accounts/{koronaAccountId}/additionalReceiptInfoTypes/{additionalReceiptInfoTypeId} |  |
| [**update_additional_receipt_info_types**](AdditionalReceiptInfoTypesApi.md#update_additional_receipt_info_types) | **PATCH** /accounts/{koronaAccountId}/additionalReceiptInfoTypes |  |


## add_additional_receipt_info_types

> <Array<AddOrUpdateResult>> add_additional_receipt_info_types(korona_account_id, additional_receipt_info_type, opts)



adds a batch of new additional receipt infos

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type = [KoronaCloudClient::AdditionalReceiptInfoType.new] # Array<AdditionalReceiptInfoType> | array of new additional receipt infos
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_additional_receipt_info_types(korona_account_id, additional_receipt_info_type, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->add_additional_receipt_info_types: #{e}"
end
```

#### Using the add_additional_receipt_info_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->add_additional_receipt_info_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type** | [**Array&lt;AdditionalReceiptInfoType&gt;**](AdditionalReceiptInfoType.md) | array of new additional receipt infos |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_additional_receipt_info_type

> delete_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)



deletes the single additional receipt info type

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type_id = 'additional_receipt_info_type_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->delete_additional_receipt_info_type: #{e}"
end
```

#### Using the delete_additional_receipt_info_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->delete_additional_receipt_info_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_additional_receipt_info_types

> <Array<AddOrUpdateResult>> delete_additional_receipt_info_types(korona_account_id, additional_receipt_info_type)



deletes a batch of additional receipt info types

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type = [KoronaCloudClient::AdditionalReceiptInfoType.new] # Array<AdditionalReceiptInfoType> | array of existing additional receipt infos (id or number required)

begin
  
  result = api_instance.delete_additional_receipt_info_types(korona_account_id, additional_receipt_info_type)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->delete_additional_receipt_info_types: #{e}"
end
```

#### Using the delete_additional_receipt_info_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->delete_additional_receipt_info_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type** | [**Array&lt;AdditionalReceiptInfoType&gt;**](AdditionalReceiptInfoType.md) | array of existing additional receipt infos (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_additional_receipt_info_type

> <AdditionalReceiptInfoType> get_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)



returns the single additional receipt info type

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type_id = 'additional_receipt_info_type_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_type: #{e}"
end
```

#### Using the get_additional_receipt_info_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdditionalReceiptInfoType>, Integer, Hash)> get_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdditionalReceiptInfoType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**AdditionalReceiptInfoType**](AdditionalReceiptInfoType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_additional_receipt_info_types

> <ResultListAdditionalReceiptInfoType> get_additional_receipt_info_types(korona_account_id, opts)



lists all additional receipt info types

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
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
  
  result = api_instance.get_additional_receipt_info_types(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_types: #{e}"
end
```

#### Using the get_additional_receipt_info_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListAdditionalReceiptInfoType>, Integer, Hash)> get_additional_receipt_info_types_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_additional_receipt_info_types_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListAdditionalReceiptInfoType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_types_with_http_info: #{e}"
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

[**ResultListAdditionalReceiptInfoType**](ResultListAdditionalReceiptInfoType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_additional_receipt_info_type

> update_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id, additional_receipt_info_type)



updates the single additional receipt info type; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type_id = 'additional_receipt_info_type_id_example' # String | id of the related object (important: id should match the uuid-format)
additional_receipt_info_type = KoronaCloudClient::AdditionalReceiptInfoType.new # AdditionalReceiptInfoType | the object to update

begin
  
  api_instance.update_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id, additional_receipt_info_type)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->update_additional_receipt_info_type: #{e}"
end
```

#### Using the update_additional_receipt_info_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id, additional_receipt_info_type)

```ruby
begin
  
  data, status_code, headers = api_instance.update_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id, additional_receipt_info_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->update_additional_receipt_info_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **additional_receipt_info_type** | [**AdditionalReceiptInfoType**](AdditionalReceiptInfoType.md) | the object to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_additional_receipt_info_types

> <Array<AddOrUpdateResult>> update_additional_receipt_info_types(korona_account_id, additional_receipt_info_type)



updates a batch of additional receipt info types; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type = [KoronaCloudClient::AdditionalReceiptInfoType.new] # Array<AdditionalReceiptInfoType> | an array of existing additional receipt infos

begin
  
  result = api_instance.update_additional_receipt_info_types(korona_account_id, additional_receipt_info_type)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->update_additional_receipt_info_types: #{e}"
end
```

#### Using the update_additional_receipt_info_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type)

```ruby
begin
  
  data, status_code, headers = api_instance.update_additional_receipt_info_types_with_http_info(korona_account_id, additional_receipt_info_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->update_additional_receipt_info_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type** | [**Array&lt;AdditionalReceiptInfoType&gt;**](AdditionalReceiptInfoType.md) | an array of existing additional receipt infos |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

