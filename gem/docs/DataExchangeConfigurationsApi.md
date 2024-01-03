# KoronaCloudClient::DataExchangeConfigurationsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **data_exchange_configuration_type** | **String** | data exchange configuration type |  |

### Return type

[**DataExchangeConfiguration**](DataExchangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_exchange_configurations

> <ResultListDataExchangeConfiguration> get_data_exchange_configurations(korona_account_id)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  
  result = api_instance.get_data_exchange_configurations(korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DataExchangeConfigurationsApi->get_data_exchange_configurations: #{e}"
end
```

#### Using the get_data_exchange_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDataExchangeConfiguration>, Integer, Hash)> get_data_exchange_configurations_with_http_info(korona_account_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_data_exchange_configurations_with_http_info(korona_account_id)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

[**ResultListDataExchangeConfiguration**](ResultListDataExchangeConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

