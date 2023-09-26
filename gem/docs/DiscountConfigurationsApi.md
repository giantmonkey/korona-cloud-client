# KoronaCloudClient::DiscountConfigurationsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_discount_configuration_discount_levels**](DiscountConfigurationsApi.md#add_discount_configuration_discount_levels) | **POST** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels |  |
| [**add_discount_configuration_discounts**](DiscountConfigurationsApi.md#add_discount_configuration_discounts) | **POST** /accounts/{koronaAccountId}/discountConfigurations |  |
| [**delete_discount_configuration_discount_level**](DiscountConfigurationsApi.md#delete_discount_configuration_discount_level) | **DELETE** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels/{discountLevelId} |  |
| [**delete_discount_configuration_discount_levels**](DiscountConfigurationsApi.md#delete_discount_configuration_discount_levels) | **DELETE** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels |  |
| [**get_discount_configuration**](DiscountConfigurationsApi.md#get_discount_configuration) | **GET** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId} |  |
| [**get_discount_configuration_discount_level**](DiscountConfigurationsApi.md#get_discount_configuration_discount_level) | **GET** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels/{discountLevelId} |  |
| [**get_discount_configuration_discount_levels**](DiscountConfigurationsApi.md#get_discount_configuration_discount_levels) | **GET** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels |  |
| [**get_discount_configurations**](DiscountConfigurationsApi.md#get_discount_configurations) | **GET** /accounts/{koronaAccountId}/discountConfigurations |  |
| [**get_discount_level**](DiscountConfigurationsApi.md#get_discount_level) | **GET** /accounts/{koronaAccountId}/discountLevels/{discountLevelId} |  |
| [**get_discount_levels**](DiscountConfigurationsApi.md#get_discount_levels) | **GET** /accounts/{koronaAccountId}/discountLevels |  |
| [**update_discount_configuration**](DiscountConfigurationsApi.md#update_discount_configuration) | **PATCH** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId} |  |
| [**update_discount_configuration_discount_level**](DiscountConfigurationsApi.md#update_discount_configuration_discount_level) | **PATCH** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels/{discountLevelId} |  |
| [**update_discount_configuration_discount_levels**](DiscountConfigurationsApi.md#update_discount_configuration_discount_levels) | **PATCH** /accounts/{koronaAccountId}/discountConfigurations/{discountConfigurationId}/discountLevels |  |
| [**update_discount_configurations**](DiscountConfigurationsApi.md#update_discount_configurations) | **PATCH** /accounts/{koronaAccountId}/discountConfigurations |  |


## add_discount_configuration_discount_levels

> <Array<AddOrUpdateResult>> add_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level, opts)



adds a batch of new discount configuration discount levels

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | array of new discount levels
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configuration_discount_levels: #{e}"
end
```

#### Using the add_discount_configuration_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configuration_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | array of new discount levels |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_discount_configuration_discounts

> <Array<AddOrUpdateResult>> add_discount_configuration_discounts(korona_account_id, discount_configuration, opts)



adds a batch of new discount configurations

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration = [KoronaCloudClient::DiscountConfiguration.new] # Array<DiscountConfiguration> | array of new discount configurations
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_discount_configuration_discounts(korona_account_id, discount_configuration, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configuration_discounts: #{e}"
end
```

#### Using the add_discount_configuration_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_discount_configuration_discounts_with_http_info(korona_account_id, discount_configuration, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_discount_configuration_discounts_with_http_info(korona_account_id, discount_configuration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configuration_discounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration** | [**Array&lt;DiscountConfiguration&gt;**](DiscountConfiguration.md) | array of new discount configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_discount_configuration_discount_level

> delete_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id)



deletes the single discount configuration discount level

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration_discount_level: #{e}"
end
```

#### Using the delete_discount_configuration_discount_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discount_configuration_discount_levels

> <Array<AddOrUpdateResult>> delete_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level)



deletes a batch of discount configuration discount levels

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | array of existing discount levels (id or number required)

begin
  
  result = api_instance.delete_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration_discount_levels: #{e}"
end
```

#### Using the delete_discount_configuration_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | array of existing discount levels (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_discount_configuration

> <DiscountConfiguration> get_discount_configuration(korona_account_id, discount_configuration_id)



returns the single discount configuration

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_discount_configuration(korona_account_id, discount_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration: #{e}"
end
```

#### Using the get_discount_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountConfiguration>, Integer, Hash)> get_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DiscountConfiguration**](DiscountConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_configuration_discount_level

> <DiscountLevel> get_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id)



returns the single discount configuration discount level

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_discount_level: #{e}"
end
```

#### Using the get_discount_configuration_discount_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLevel>, Integer, Hash)> get_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DiscountLevel**](DiscountLevel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_configuration_discount_levels

> <ResultListDiscountLevel> get_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, opts)



lists all discount configuration discount levels

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  
  result = api_instance.get_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_discount_levels: #{e}"
end
```

#### Using the get_discount_configuration_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDiscountLevel>, Integer, Hash)> get_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |

### Return type

[**ResultListDiscountLevel**](ResultListDiscountLevel.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_configurations

> <ResultListDiscountConfiguration> get_discount_configurations(korona_account_id, opts)



lists all discount configurations

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
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
  
  result = api_instance.get_discount_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configurations: #{e}"
end
```

#### Using the get_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDiscountConfiguration>, Integer, Hash)> get_discount_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDiscountConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configurations_with_http_info: #{e}"
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

[**ResultListDiscountConfiguration**](ResultListDiscountConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_discount_level(korona_account_id, discount_level_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_level: #{e}"
end
```

#### Using the get_discount_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLevel>, Integer, Hash)> get_discount_level_with_http_info(korona_account_id, discount_level_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_level_with_http_info(korona_account_id, discount_level_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_level_with_http_info: #{e}"
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



lists all discount levels

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
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
  
  result = api_instance.get_discount_levels(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_levels: #{e}"
end
```

#### Using the get_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDiscountLevel>, Integer, Hash)> get_discount_levels_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_discount_levels_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDiscountLevel>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_levels_with_http_info: #{e}"
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


## update_discount_configuration

> update_discount_configuration(korona_account_id, discount_configuration_id, discount_configuration)



updates the single discount configuration; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_configuration = KoronaCloudClient::DiscountConfiguration.new # DiscountConfiguration | the properties to update of the discount configuration

begin
  
  api_instance.update_discount_configuration(korona_account_id, discount_configuration_id, discount_configuration)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration: #{e}"
end
```

#### Using the update_discount_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_discount_configuration_with_http_info(korona_account_id, discount_configuration_id, discount_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_discount_configuration_with_http_info(korona_account_id, discount_configuration_id, discount_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_configuration** | [**DiscountConfiguration**](DiscountConfiguration.md) | the properties to update of the discount configuration |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_configuration_discount_level

> update_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id, discount_level)



updates the single discount configuration discount level; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level_id = 'discount_level_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level = KoronaCloudClient::DiscountLevel.new # DiscountLevel | the properties to update of the discount level

begin
  
  api_instance.update_discount_configuration_discount_level(korona_account_id, discount_configuration_id, discount_level_id, discount_level)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_discount_level: #{e}"
end
```

#### Using the update_discount_configuration_discount_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id, discount_level)

```ruby
begin
  
  data, status_code, headers = api_instance.update_discount_configuration_discount_level_with_http_info(korona_account_id, discount_configuration_id, discount_level_id, discount_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_discount_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level** | [**DiscountLevel**](DiscountLevel.md) | the properties to update of the discount level |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_configuration_discount_levels

> <Array<AddOrUpdateResult>> update_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level)



updates a batch of discount configuration discount levels

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
discount_level = [KoronaCloudClient::DiscountLevel.new] # Array<DiscountLevel> | array of discount levels

begin
  
  result = api_instance.update_discount_configuration_discount_levels(korona_account_id, discount_configuration_id, discount_level)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_discount_levels: #{e}"
end
```

#### Using the update_discount_configuration_discount_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level)

```ruby
begin
  
  data, status_code, headers = api_instance.update_discount_configuration_discount_levels_with_http_info(korona_account_id, discount_configuration_id, discount_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_discount_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **discount_level** | [**Array&lt;DiscountLevel&gt;**](DiscountLevel.md) | array of discount levels |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_configurations

> <Array<AddOrUpdateResult>> update_discount_configurations(korona_account_id, discount_configuration)



updates a batch of discountConfigurations; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration = [KoronaCloudClient::DiscountConfiguration.new] # Array<DiscountConfiguration> | an array of existing discountConfigurations

begin
  
  result = api_instance.update_discount_configurations(korona_account_id, discount_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configurations: #{e}"
end
```

#### Using the update_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_discount_configurations_with_http_info(korona_account_id, discount_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_discount_configurations_with_http_info(korona_account_id, discount_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration** | [**Array&lt;DiscountConfiguration&gt;**](DiscountConfiguration.md) | an array of existing discountConfigurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

