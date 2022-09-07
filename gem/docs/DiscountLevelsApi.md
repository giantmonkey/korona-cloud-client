# KoronaCloudClient::DiscountLevelsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_discount_levels**](DiscountLevelsApi.md#add_discount_levels) | **POST** /accounts/{koronaAccountId}/discountlevels | adds a batch of new discount levels |
| [**delete_discount_level**](DiscountLevelsApi.md#delete_discount_level) | **DELETE** /accounts/{koronaAccountId}/discountlevels/{discountLevelId} | deletes the single discount level |
| [**delete_discount_levels**](DiscountLevelsApi.md#delete_discount_levels) | **DELETE** /accounts/{koronaAccountId}/discountlevels | deletes a batch of discountLevels |
| [**get_discount_level**](DiscountLevelsApi.md#get_discount_level) | **GET** /accounts/{koronaAccountId}/discountlevels/{discountLevelId} | returns the single discount level |
| [**get_discount_levels**](DiscountLevelsApi.md#get_discount_levels) | **GET** /accounts/{koronaAccountId}/discountlevels | lists all discountLevels |
| [**update_discount_level**](DiscountLevelsApi.md#update_discount_level) | **PATCH** /accounts/{koronaAccountId}/discountlevels/{discountLevelId} | updates the single discount level |
| [**update_discount_levels**](DiscountLevelsApi.md#update_discount_levels) | **PATCH** /accounts/{koronaAccountId}/discountlevels | updates a batch of discountLevels |


## add_discount_levels

> <Array<AddOrUpdateResult>> add_discount_levels(korona_account_id, body, opts)

adds a batch of new discount levels

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | array of new discount levels
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new discount levels
  result = api_instance.add_discount_levels(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->add_discount_levels: #{e}"
end
```

#### Using the add_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_discount_levels_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new discount levels
  data, status_code, headers = api_instance.add_discount_levels_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->add_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | array of new discount levels |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_discount_level

> delete_discount_level(korona_account_id, discount_level_id)

deletes the single discount level

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single discount level
  api_instance.delete_discount_level(korona_account_id, discount_level_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->delete_discount_level: #{e}"
end
```

#### Using the delete_discount_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_discount_level_with_http_info(korona_account_id, discount_level_id)

```ruby
begin
  # deletes the single discount level
  data, status_code, headers = api_instance.delete_discount_level_with_http_info(korona_account_id, discount_level_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->delete_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discount_levels

> <Array<AddOrUpdateResult>> delete_discount_levels(korona_account_id, body)

deletes a batch of discountLevels

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | array of existing discount levels (id or number required)

begin
  # deletes a batch of discountLevels
  result = api_instance.delete_discount_levels(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->delete_discount_levels: #{e}"
end
```

#### Using the delete_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_discount_levels_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of discountLevels
  data, status_code, headers = api_instance.delete_discount_levels_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->delete_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | array of existing discount levels (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_discount_level

> <DiscountLevel> get_discount_level(korona_account_id, discount_level_id)

returns the single discount level

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single discount level
  result = api_instance.get_discount_level(korona_account_id, discount_level_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->get_discount_level: #{e}"
end
```

#### Using the get_discount_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLevel>, Integer, Hash)> get_discount_level_with_http_info(korona_account_id, discount_level_id)

```ruby
begin
  # returns the single discount level
  data, status_code, headers = api_instance.get_discount_level_with_http_info(korona_account_id, discount_level_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->get_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DiscountLevel**](DiscountLevel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_levels

> <ResultListDiscountLevel> get_discount_levels(korona_account_id, opts)

lists all discountLevels

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
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
  # lists all discountLevels
  result = api_instance.get_discount_levels(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->get_discount_levels: #{e}"
end
```

#### Using the get_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDiscountLevel>, Integer, Hash)> get_discount_levels_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all discountLevels
  data, status_code, headers = api_instance.get_discount_levels_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->get_discount_levels_with_http_info: #{e}"
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

[**ResultListDiscountLevel**](ResultListDiscountLevel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_discount_level

> update_discount_level(korona_account_id, discount_level_id, body)

updates the single discount level

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::DiscountLevel.new # DiscountLevel | the properties to update of the discount level

begin
  # updates the single discount level
  api_instance.update_discount_level(korona_account_id, discount_level_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->update_discount_level: #{e}"
end
```

#### Using the update_discount_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_discount_level_with_http_info(korona_account_id, discount_level_id, body)

```ruby
begin
  # updates the single discount level
  data, status_code, headers = api_instance.update_discount_level_with_http_info(korona_account_id, discount_level_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->update_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**DiscountLevel**](DiscountLevel.md) | the properties to update of the discount level |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_levels

> <Array<AddOrUpdateResult>> update_discount_levels(korona_account_id, body)

updates a batch of discountLevels

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

api_instance = KoronaCloudClient::DiscountLevelsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | an array of existing discountLevels

begin
  # updates a batch of discountLevels
  result = api_instance.update_discount_levels(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->update_discount_levels: #{e}"
end
```

#### Using the update_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_discount_levels_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of discountLevels
  data, status_code, headers = api_instance.update_discount_levels_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountLevelsApi->update_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | an array of existing discountLevels |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

