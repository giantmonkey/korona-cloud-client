# KoronaCloudClient::TagsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_tags**](TagsApi.md#add_tags) | **POST** /accounts/{koronaAccountId}/tags |  |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /accounts/{koronaAccountId}/tags/{tagId} |  |
| [**delete_tags**](TagsApi.md#delete_tags) | **DELETE** /accounts/{koronaAccountId}/tags |  |
| [**get_tag**](TagsApi.md#get_tag) | **GET** /accounts/{koronaAccountId}/tags/{tagId} |  |
| [**get_tags**](TagsApi.md#get_tags) | **GET** /accounts/{koronaAccountId}/tags |  |
| [**update_tag**](TagsApi.md#update_tag) | **PATCH** /accounts/{koronaAccountId}/tags/{tagId} |  |
| [**update_tags**](TagsApi.md#update_tags) | **PATCH** /accounts/{koronaAccountId}/tags |  |


## add_tags

> <Array<AddOrUpdateResult>> add_tags(korona_account_id, tag, opts)



adds a batch of new tags

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag = [KoronaCloudClient::Tag.new] # Array<Tag> | array of new tags
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_tags(korona_account_id, tag, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->add_tags: #{e}"
end
```

#### Using the add_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_tags_with_http_info(korona_account_id, tag, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_tags_with_http_info(korona_account_id, tag, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->add_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag** | [**Array&lt;Tag&gt;**](Tag.md) | array of new tags |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> delete_tag(korona_account_id, tag_id)



deletes the single tag

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag_id = 'tag_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_tag(korona_account_id, tag_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_with_http_info(korona_account_id, tag_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_tag_with_http_info(korona_account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tags

> <Array<AddOrUpdateResult>> delete_tags(korona_account_id, tag)



deletes a batch of tags

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag = [KoronaCloudClient::Tag.new] # Array<Tag> | array of existing tags (id or number required)

begin
  
  result = api_instance.delete_tags(korona_account_id, tag)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->delete_tags: #{e}"
end
```

#### Using the delete_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_tags_with_http_info(korona_account_id, tag)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_tags_with_http_info(korona_account_id, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->delete_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag** | [**Array&lt;Tag&gt;**](Tag.md) | array of existing tags (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tag

> <Tag> get_tag(korona_account_id, tag_id)



returns the single tag

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag_id = 'tag_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_tag(korona_account_id, tag_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> get_tag_with_http_info(korona_account_id, tag_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_tag_with_http_info(korona_account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tags

> <ResultListTag> get_tags(korona_account_id, opts)



lists all tags

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

api_instance = KoronaCloudClient::TagsApi.new
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
  
  result = api_instance.get_tags(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListTag>, Integer, Hash)> get_tags_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_tags_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListTag>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->get_tags_with_http_info: #{e}"
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

[**ResultListTag**](ResultListTag.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag

> update_tag(korona_account_id, tag_id, tag)



updates the single tag

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag_id = 'tag_id_example' # String | id of the related object (important: id should match the uuid-format)
tag = KoronaCloudClient::Tag.new # Tag | the properties to update of the tag

begin
  
  api_instance.update_tag(korona_account_id, tag_id, tag)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_tag_with_http_info(korona_account_id, tag_id, tag)

```ruby
begin
  
  data, status_code, headers = api_instance.update_tag_with_http_info(korona_account_id, tag_id, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **tag** | [**Tag**](Tag.md) | the properties to update of the tag |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tags

> <Array<AddOrUpdateResult>> update_tags(korona_account_id, tag)



updates a batch of tags

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

api_instance = KoronaCloudClient::TagsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
tag = [KoronaCloudClient::Tag.new] # Array<Tag> | array of existing tags (id or number required)

begin
  
  result = api_instance.update_tags(korona_account_id, tag)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->update_tags: #{e}"
end
```

#### Using the update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_tags_with_http_info(korona_account_id, tag)

```ruby
begin
  
  data, status_code, headers = api_instance.update_tags_with_http_info(korona_account_id, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling TagsApi->update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **tag** | [**Array&lt;Tag&gt;**](Tag.md) | array of existing tags (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

