# KoronaCloudClient::DataExchangeConfigurationsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_data_exchange_configuration**](DataExchangeConfigurationsApi.md#get_data_exchange_configuration) | **GET** /accounts/{koronaAccountId}/dataExchangeConfigurations/{dataExchangeConfigurationType} |  |
| [**get_data_exchange_configurations**](DataExchangeConfigurationsApi.md#get_data_exchange_configurations) | **GET** /accounts/{koronaAccountId}/dataExchangeConfigurations |  |


## get_data_exchange_configuration

> <DataExchangeConfiguration> get_data_exchange_configuration(korona_account_id, data_exchange_configuration_type)



returns the single data exchange configuration

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

api_instance = KoronaCloudClient::DataExchangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
data_exchange_configuration_type = 'KORONA_ENTRY' # String | data exchange configuration type

begin
  
  result = api_instance.get_data_exchange_configuration(korona_account_id, data_exchange_configuration_type)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DataExchangeConfigurationsApi->get_data_exchange_configuration: #{e}"
end
```

#### Using the get_data_exchange_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataExchangeConfiguration>, Integer, Hash)> get_data_exchange_configuration_with_http_info(korona_account_id, data_exchange_configuration_type)

```ruby
begin
  
  data, status_code, headers = api_instance.get_data_exchange_configuration_with_http_info(korona_account_id, data_exchange_configuration_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataExchangeConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DataExchangeConfigurationsApi->get_data_exchange_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **data_exchange_configuration_type** | **String** | data exchange configuration type |  |

### Return type

[**DataExchangeConfiguration**](DataExchangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_exchange_configurations

> <ResultListDataExchangeConfiguration> get_data_exchange_configurations(korona_account_id, opts)



lists all data exchange configurations

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

api_instance = KoronaCloudClient::DataExchangeConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  
  result = api_instance.get_data_exchange_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DataExchangeConfigurationsApi->get_data_exchange_configurations: #{e}"
end
```

#### Using the get_data_exchange_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDataExchangeConfiguration>, Integer, Hash)> get_data_exchange_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_data_exchange_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDataExchangeConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DataExchangeConfigurationsApi->get_data_exchange_configurations_with_http_info: #{e}"
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

### Return type

[**ResultListDataExchangeConfiguration**](ResultListDataExchangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

