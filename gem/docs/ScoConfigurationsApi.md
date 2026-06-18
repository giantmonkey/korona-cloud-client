# KoronaCloudClient::ScoConfigurationsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_sco_configurations**](ScoConfigurationsApi.md#add_sco_configurations) | **POST** /accounts/{koronaAccountId}/scoConfigurations |  |
| [**delete_sco_configuration**](ScoConfigurationsApi.md#delete_sco_configuration) | **DELETE** /accounts/{koronaAccountId}/scoConfigurations/{scoConfigurationId} |  |
| [**delete_sco_configurations**](ScoConfigurationsApi.md#delete_sco_configurations) | **DELETE** /accounts/{koronaAccountId}/scoConfigurations |  |
| [**get_sco_configuration**](ScoConfigurationsApi.md#get_sco_configuration) | **GET** /accounts/{koronaAccountId}/scoConfigurations/{scoConfigurationId} |  |
| [**get_sco_configurations**](ScoConfigurationsApi.md#get_sco_configurations) | **GET** /accounts/{koronaAccountId}/scoConfigurations |  |
| [**update_sco_configuration**](ScoConfigurationsApi.md#update_sco_configuration) | **PATCH** /accounts/{koronaAccountId}/scoConfigurations/{scoConfigurationId} |  |
| [**update_sco_configurations**](ScoConfigurationsApi.md#update_sco_configurations) | **PATCH** /accounts/{koronaAccountId}/scoConfigurations |  |


## add_sco_configurations

> <Array<AddOrUpdateResult>> add_sco_configurations(korona_account_id, sco_configuration, opts)



adds a batch of new sco configurations

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration = [KoronaCloudClient::ScoConfiguration.new] # Array<ScoConfiguration> | array of new sco configurations
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_sco_configurations(korona_account_id, sco_configuration, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->add_sco_configurations: #{e}"
end
```

#### Using the add_sco_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_sco_configurations_with_http_info(korona_account_id, sco_configuration, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_sco_configurations_with_http_info(korona_account_id, sco_configuration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->add_sco_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration** | [**Array&lt;ScoConfiguration&gt;**](ScoConfiguration.md) | array of new sco configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sco_configuration

> delete_sco_configuration(korona_account_id, sco_configuration_id)



deletes the single sco configuration

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration_id = 'sco_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_sco_configuration(korona_account_id, sco_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->delete_sco_configuration: #{e}"
end
```

#### Using the delete_sco_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sco_configuration_with_http_info(korona_account_id, sco_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_sco_configuration_with_http_info(korona_account_id, sco_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->delete_sco_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_sco_configurations

> <Array<AddOrUpdateResult>> delete_sco_configurations(korona_account_id, sco_configuration)



deletes a batch of sco configurations

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration = [KoronaCloudClient::ScoConfiguration.new] # Array<ScoConfiguration> | array of existing sco configurations (id or number required)

begin
  
  result = api_instance.delete_sco_configurations(korona_account_id, sco_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->delete_sco_configurations: #{e}"
end
```

#### Using the delete_sco_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_sco_configurations_with_http_info(korona_account_id, sco_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_sco_configurations_with_http_info(korona_account_id, sco_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->delete_sco_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration** | [**Array&lt;ScoConfiguration&gt;**](ScoConfiguration.md) | array of existing sco configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sco_configuration

> <ScoConfiguration> get_sco_configuration(korona_account_id, sco_configuration_id)



returns the single sco configuration

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration_id = 'sco_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_sco_configuration(korona_account_id, sco_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->get_sco_configuration: #{e}"
end
```

#### Using the get_sco_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoConfiguration>, Integer, Hash)> get_sco_configuration_with_http_info(korona_account_id, sco_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_sco_configuration_with_http_info(korona_account_id, sco_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->get_sco_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ScoConfiguration**](ScoConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sco_configurations

> <ResultListScoConfiguration> get_sco_configurations(korona_account_id, opts)



lists all sco configurations

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  
  result = api_instance.get_sco_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->get_sco_configurations: #{e}"
end
```

#### Using the get_sco_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListScoConfiguration>, Integer, Hash)> get_sco_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_sco_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListScoConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->get_sco_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListScoConfiguration**](ResultListScoConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sco_configuration

> update_sco_configuration(korona_account_id, sco_configuration_id, sco_configuration)



updates the single sco configuration; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration_id = 'sco_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
sco_configuration = KoronaCloudClient::ScoConfiguration.new # ScoConfiguration | the properties to update of the sco configuration

begin
  
  api_instance.update_sco_configuration(korona_account_id, sco_configuration_id, sco_configuration)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->update_sco_configuration: #{e}"
end
```

#### Using the update_sco_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_sco_configuration_with_http_info(korona_account_id, sco_configuration_id, sco_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_sco_configuration_with_http_info(korona_account_id, sco_configuration_id, sco_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->update_sco_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **sco_configuration** | [**ScoConfiguration**](ScoConfiguration.md) | the properties to update of the sco configuration |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sco_configurations

> <Array<AddOrUpdateResult>> update_sco_configurations(korona_account_id, sco_configuration)



updates a batch of sco configurations; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::ScoConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
sco_configuration = [KoronaCloudClient::ScoConfiguration.new] # Array<ScoConfiguration> | an array of existing sco configurations

begin
  
  result = api_instance.update_sco_configurations(korona_account_id, sco_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->update_sco_configurations: #{e}"
end
```

#### Using the update_sco_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_sco_configurations_with_http_info(korona_account_id, sco_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_sco_configurations_with_http_info(korona_account_id, sco_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ScoConfigurationsApi->update_sco_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **sco_configuration** | [**Array&lt;ScoConfiguration&gt;**](ScoConfiguration.md) | an array of existing sco configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

