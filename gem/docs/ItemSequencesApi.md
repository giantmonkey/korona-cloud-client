# KoronaCloudClient::ItemSequencesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_item_sequences**](ItemSequencesApi.md#add_item_sequences) | **POST** /accounts/{koronaAccountId}/itemSequences |  |
| [**delete_item_sequence**](ItemSequencesApi.md#delete_item_sequence) | **DELETE** /accounts/{koronaAccountId}/itemSequences/{itemSequenceId} |  |
| [**delete_item_sequences**](ItemSequencesApi.md#delete_item_sequences) | **DELETE** /accounts/{koronaAccountId}/itemSequences |  |
| [**get_item_sequence**](ItemSequencesApi.md#get_item_sequence) | **GET** /accounts/{koronaAccountId}/itemSequences/{itemSequenceId} |  |
| [**get_item_sequences**](ItemSequencesApi.md#get_item_sequences) | **GET** /accounts/{koronaAccountId}/itemSequences |  |
| [**update_item_sequence**](ItemSequencesApi.md#update_item_sequence) | **PATCH** /accounts/{koronaAccountId}/itemSequences/{itemSequenceId} |  |
| [**update_item_sequences**](ItemSequencesApi.md#update_item_sequences) | **PATCH** /accounts/{koronaAccountId}/itemSequences |  |


## add_item_sequences

> <Array<AddOrUpdateResult>> add_item_sequences(korona_account_id, item_sequence, opts)



adds a batch of new item sequences

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence = [KoronaCloudClient::ItemSequence.new] # Array<ItemSequence> | array of new item sequences
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_item_sequences(korona_account_id, item_sequence, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->add_item_sequences: #{e}"
end
```

#### Using the add_item_sequences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_item_sequences_with_http_info(korona_account_id, item_sequence, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_item_sequences_with_http_info(korona_account_id, item_sequence, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->add_item_sequences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence** | [**Array&lt;ItemSequence&gt;**](ItemSequence.md) | array of new item sequences |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_item_sequence

> delete_item_sequence(korona_account_id, item_sequence_id)



deletes the single item sequence

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence_id = 'item_sequence_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_item_sequence(korona_account_id, item_sequence_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->delete_item_sequence: #{e}"
end
```

#### Using the delete_item_sequence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_item_sequence_with_http_info(korona_account_id, item_sequence_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_item_sequence_with_http_info(korona_account_id, item_sequence_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->delete_item_sequence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_item_sequences

> <Array<AddOrUpdateResult>> delete_item_sequences(korona_account_id, item_sequence)



deletes a batch of item sequences

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence = [KoronaCloudClient::ItemSequence.new] # Array<ItemSequence> | array of existing item sequences (id or number required)

begin
  
  result = api_instance.delete_item_sequences(korona_account_id, item_sequence)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->delete_item_sequences: #{e}"
end
```

#### Using the delete_item_sequences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_item_sequences_with_http_info(korona_account_id, item_sequence)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_item_sequences_with_http_info(korona_account_id, item_sequence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->delete_item_sequences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence** | [**Array&lt;ItemSequence&gt;**](ItemSequence.md) | array of existing item sequences (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_item_sequence

> <ItemSequence> get_item_sequence(korona_account_id, item_sequence_id)



returns a single item sequence

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence_id = 'item_sequence_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_item_sequence(korona_account_id, item_sequence_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->get_item_sequence: #{e}"
end
```

#### Using the get_item_sequence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemSequence>, Integer, Hash)> get_item_sequence_with_http_info(korona_account_id, item_sequence_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_item_sequence_with_http_info(korona_account_id, item_sequence_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemSequence>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->get_item_sequence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ItemSequence**](ItemSequence.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_item_sequences

> <ResultListItemSequence> get_item_sequences(korona_account_id, opts)



lists all item sequences

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
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
  
  result = api_instance.get_item_sequences(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->get_item_sequences: #{e}"
end
```

#### Using the get_item_sequences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListItemSequence>, Integer, Hash)> get_item_sequences_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_item_sequences_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListItemSequence>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->get_item_sequences_with_http_info: #{e}"
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

[**ResultListItemSequence**](ResultListItemSequence.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_item_sequence

> update_item_sequence(korona_account_id, item_sequence_id, item_sequence)



updates the single item sequence; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence_id = 'item_sequence_id_example' # String | id of the related object (important: id should match the uuid-format)
item_sequence = KoronaCloudClient::ItemSequence.new # ItemSequence | the properties to update of the item sequence

begin
  
  api_instance.update_item_sequence(korona_account_id, item_sequence_id, item_sequence)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->update_item_sequence: #{e}"
end
```

#### Using the update_item_sequence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_item_sequence_with_http_info(korona_account_id, item_sequence_id, item_sequence)

```ruby
begin
  
  data, status_code, headers = api_instance.update_item_sequence_with_http_info(korona_account_id, item_sequence_id, item_sequence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->update_item_sequence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **item_sequence** | [**ItemSequence**](ItemSequence.md) | the properties to update of the item sequence |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_item_sequences

> <Array<AddOrUpdateResult>> update_item_sequences(korona_account_id, item_sequence)



updates a batch of item sequences; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::ItemSequencesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
item_sequence = [KoronaCloudClient::ItemSequence.new] # Array<ItemSequence> | an array of existing item sequences

begin
  
  result = api_instance.update_item_sequences(korona_account_id, item_sequence)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->update_item_sequences: #{e}"
end
```

#### Using the update_item_sequences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_item_sequences_with_http_info(korona_account_id, item_sequence)

```ruby
begin
  
  data, status_code, headers = api_instance.update_item_sequences_with_http_info(korona_account_id, item_sequence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ItemSequencesApi->update_item_sequences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **item_sequence** | [**Array&lt;ItemSequence&gt;**](ItemSequence.md) | an array of existing item sequences |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

