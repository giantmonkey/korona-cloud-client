# KoronaCloudClient::PosPageLayoutConfigurationsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_pos_page_layout_configurations**](PosPageLayoutConfigurationsApi.md#add_pos_page_layout_configurations) | **POST** /accounts/{koronaAccountId}/posPageLayoutConfigurations |  |
| [**delete_pos_page_layout_configuration**](PosPageLayoutConfigurationsApi.md#delete_pos_page_layout_configuration) | **DELETE** /accounts/{koronaAccountId}/posPageLayoutConfigurations/{posPageLayoutConfigurationId} |  |
| [**delete_pos_page_layout_configurations**](PosPageLayoutConfigurationsApi.md#delete_pos_page_layout_configurations) | **DELETE** /accounts/{koronaAccountId}/posPageLayoutConfigurations |  |
| [**get_pos_page_layout_configuration**](PosPageLayoutConfigurationsApi.md#get_pos_page_layout_configuration) | **GET** /accounts/{koronaAccountId}/posPageLayoutConfigurations/{posPageLayoutConfigurationId} |  |
| [**get_pos_page_layout_configurations**](PosPageLayoutConfigurationsApi.md#get_pos_page_layout_configurations) | **GET** /accounts/{koronaAccountId}/posPageLayoutConfigurations |  |
| [**update_pos_page_layout_configuration**](PosPageLayoutConfigurationsApi.md#update_pos_page_layout_configuration) | **PATCH** /accounts/{koronaAccountId}/posPageLayoutConfigurations/{posPageLayoutConfigurationId} |  |
| [**update_pos_page_layout_configurations**](PosPageLayoutConfigurationsApi.md#update_pos_page_layout_configurations) | **PATCH** /accounts/{koronaAccountId}/posPageLayoutConfigurations |  |


## add_pos_page_layout_configurations

> <Array<AddOrUpdateResult>> add_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration, opts)



adds a batch of new pos page layout configurations

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration = [KoronaCloudClient::PosPageLayoutConfiguration.new] # Array<PosPageLayoutConfiguration> | array of new pos page layout configurations
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->add_pos_page_layout_configurations: #{e}"
end
```

#### Using the add_pos_page_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->add_pos_page_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration** | [**Array&lt;PosPageLayoutConfiguration&gt;**](PosPageLayoutConfiguration.md) | array of new pos page layout configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pos_page_layout_configuration

> delete_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id)



deletes the single pos page layout configuration

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration_id = 'pos_page_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->delete_pos_page_layout_configuration: #{e}"
end
```

#### Using the delete_pos_page_layout_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->delete_pos_page_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pos_page_layout_configurations

> <Array<AddOrUpdateResult>> delete_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration)



deletes a batch of pos page layout configurations

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration = [KoronaCloudClient::PosPageLayoutConfiguration.new] # Array<PosPageLayoutConfiguration> | array of existing pos page layout configurations (id or number required)

begin
  
  result = api_instance.delete_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->delete_pos_page_layout_configurations: #{e}"
end
```

#### Using the delete_pos_page_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->delete_pos_page_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration** | [**Array&lt;PosPageLayoutConfiguration&gt;**](PosPageLayoutConfiguration.md) | array of existing pos page layout configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_pos_page_layout_configuration

> <PosPageLayoutConfiguration> get_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id)



returns the single pos page layout configuration

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration_id = 'pos_page_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->get_pos_page_layout_configuration: #{e}"
end
```

#### Using the get_pos_page_layout_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PosPageLayoutConfiguration>, Integer, Hash)> get_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PosPageLayoutConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->get_pos_page_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PosPageLayoutConfiguration**](PosPageLayoutConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pos_page_layout_configurations

> <ResultListPosPageLayoutConfiguration> get_pos_page_layout_configurations(korona_account_id, opts)



lists all pos page layout configurations

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
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
  
  result = api_instance.get_pos_page_layout_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->get_pos_page_layout_configurations: #{e}"
end
```

#### Using the get_pos_page_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPosPageLayoutConfiguration>, Integer, Hash)> get_pos_page_layout_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pos_page_layout_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPosPageLayoutConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->get_pos_page_layout_configurations_with_http_info: #{e}"
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

[**ResultListPosPageLayoutConfiguration**](ResultListPosPageLayoutConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pos_page_layout_configuration

> update_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id, pos_page_layout_configuration)



updates the single pos page layout configuration; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration_id = 'pos_page_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
pos_page_layout_configuration = KoronaCloudClient::PosPageLayoutConfiguration.new # PosPageLayoutConfiguration | the properties to update of the pos page layout configuration

begin
  
  api_instance.update_pos_page_layout_configuration(korona_account_id, pos_page_layout_configuration_id, pos_page_layout_configuration)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->update_pos_page_layout_configuration: #{e}"
end
```

#### Using the update_pos_page_layout_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id, pos_page_layout_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_pos_page_layout_configuration_with_http_info(korona_account_id, pos_page_layout_configuration_id, pos_page_layout_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->update_pos_page_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **pos_page_layout_configuration** | [**PosPageLayoutConfiguration**](PosPageLayoutConfiguration.md) | the properties to update of the pos page layout configuration |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pos_page_layout_configurations

> <Array<AddOrUpdateResult>> update_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration)



updates a batch of pos page layout configurations; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PosPageLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_page_layout_configuration = [KoronaCloudClient::PosPageLayoutConfiguration.new] # Array<PosPageLayoutConfiguration> | an array of existing pos page layout configurations

begin
  
  result = api_instance.update_pos_page_layout_configurations(korona_account_id, pos_page_layout_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->update_pos_page_layout_configurations: #{e}"
end
```

#### Using the update_pos_page_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_pos_page_layout_configurations_with_http_info(korona_account_id, pos_page_layout_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosPageLayoutConfigurationsApi->update_pos_page_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_page_layout_configuration** | [**Array&lt;PosPageLayoutConfiguration&gt;**](PosPageLayoutConfiguration.md) | an array of existing pos page layout configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

