# KoronaCloudClient::NumberRangeConfigurationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_number_range_configurations**](NumberRangeConfigurationsApi.md#add_number_range_configurations) | **POST** /accounts/{koronaAccountId}/numberRangeConfigurations | adds a batch of new number range configurations |
| [**get_number_range_configuration**](NumberRangeConfigurationsApi.md#get_number_range_configuration) | **GET** /accounts/{koronaAccountId}/numberRangeConfigurations/{numberRangeConfigurationId} | returns the number range configuration |
| [**get_number_range_configurations**](NumberRangeConfigurationsApi.md#get_number_range_configurations) | **GET** /accounts/{koronaAccountId}/numberRangeConfigurations | lists all number range configurations |
| [**update_number_range_configurations**](NumberRangeConfigurationsApi.md#update_number_range_configurations) | **PATCH** /accounts/{koronaAccountId}/numberRangeConfigurations | updates a batch of number range configurations |


## add_number_range_configurations

> <Array<AddOrUpdateResult>> add_number_range_configurations(korona_account_id, body, opts)

adds a batch of new number range configurations

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

api_instance = KoronaCloudClient::NumberRangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::NumberRangeConfiguration.new] # Array<NumberRangeConfiguration> | array of new number range configurations
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new number range configurations
  result = api_instance.add_number_range_configurations(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->add_number_range_configurations: #{e}"
end
```

#### Using the add_number_range_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_number_range_configurations_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new number range configurations
  data, status_code, headers = api_instance.add_number_range_configurations_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->add_number_range_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;NumberRangeConfiguration&gt;**](NumberRangeConfiguration.md) | array of new number range configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_number_range_configuration

> <NumberRangeConfiguration> get_number_range_configuration(korona_account_id, number_range_configuration_id)

returns the number range configuration

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

api_instance = KoronaCloudClient::NumberRangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
number_range_configuration_id = 'number_range_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the number range configuration
  result = api_instance.get_number_range_configuration(korona_account_id, number_range_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->get_number_range_configuration: #{e}"
end
```

#### Using the get_number_range_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NumberRangeConfiguration>, Integer, Hash)> get_number_range_configuration_with_http_info(korona_account_id, number_range_configuration_id)

```ruby
begin
  # returns the number range configuration
  data, status_code, headers = api_instance.get_number_range_configuration_with_http_info(korona_account_id, number_range_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NumberRangeConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->get_number_range_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **number_range_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**NumberRangeConfiguration**](NumberRangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_number_range_configurations

> <ResultListNumberRangeConfiguration> get_number_range_configurations(korona_account_id, opts)

lists all number range configurations

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

api_instance = KoronaCloudClient::NumberRangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  # lists all number range configurations
  result = api_instance.get_number_range_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->get_number_range_configurations: #{e}"
end
```

#### Using the get_number_range_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListNumberRangeConfiguration>, Integer, Hash)> get_number_range_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all number range configurations
  data, status_code, headers = api_instance.get_number_range_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListNumberRangeConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->get_number_range_configurations_with_http_info: #{e}"
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

### Return type

[**ResultListNumberRangeConfiguration**](ResultListNumberRangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_number_range_configurations

> <Array<AddOrUpdateResult>> update_number_range_configurations(korona_account_id, body)

updates a batch of number range configurations

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

api_instance = KoronaCloudClient::NumberRangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::NumberRangeConfiguration.new] # Array<NumberRangeConfiguration> | an array of existing number range configurations

begin
  # updates a batch of number range configurations
  result = api_instance.update_number_range_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->update_number_range_configurations: #{e}"
end
```

#### Using the update_number_range_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_number_range_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of number range configurations
  data, status_code, headers = api_instance.update_number_range_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling NumberRangeConfigurationsApi->update_number_range_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;NumberRangeConfiguration&gt;**](NumberRangeConfiguration.md) | an array of existing number range configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

