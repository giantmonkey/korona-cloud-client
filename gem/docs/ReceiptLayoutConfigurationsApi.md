# KoronaCloudClient::ReceiptLayoutConfigurationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_receipt_layout_configurations**](ReceiptLayoutConfigurationsApi.md#add_receipt_layout_configurations) | **POST** /accounts/{koronaAccountId}/receiptLayoutConfigurations | adds a batch of new receipt layout configurations |
| [**delete_receipt_layout_configuration**](ReceiptLayoutConfigurationsApi.md#delete_receipt_layout_configuration) | **DELETE** /accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId} | deletes the single receipt layout configuration |
| [**delete_receipt_layout_configurations**](ReceiptLayoutConfigurationsApi.md#delete_receipt_layout_configurations) | **DELETE** /accounts/{koronaAccountId}/receiptLayoutConfigurations | deletes a batch of receipt layout configurations |
| [**get_receipt_layout_configuration**](ReceiptLayoutConfigurationsApi.md#get_receipt_layout_configuration) | **GET** /accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId} | returns the single receipt layout configuration |
| [**get_receipt_layout_configurations**](ReceiptLayoutConfigurationsApi.md#get_receipt_layout_configurations) | **GET** /accounts/{koronaAccountId}/receiptLayoutConfigurations | lists all receipt layout configurations |
| [**update_receipt_layout_configuration**](ReceiptLayoutConfigurationsApi.md#update_receipt_layout_configuration) | **PATCH** /accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId} | updates the single receipt layout configuration |
| [**update_receipt_layout_configurations**](ReceiptLayoutConfigurationsApi.md#update_receipt_layout_configurations) | **PATCH** /accounts/{koronaAccountId}/receiptLayoutConfigurations | updates a batch of receipt layout configurations |


## add_receipt_layout_configurations

> <Array<AddOrUpdateResult>> add_receipt_layout_configurations(korona_account_id, body, opts)

adds a batch of new receipt layout configurations

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ReceiptLayoutConfiguration.new] # Array<ReceiptLayoutConfiguration> | array of new receipt layout configurations
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new receipt layout configurations
  result = api_instance.add_receipt_layout_configurations(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->add_receipt_layout_configurations: #{e}"
end
```

#### Using the add_receipt_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_receipt_layout_configurations_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new receipt layout configurations
  data, status_code, headers = api_instance.add_receipt_layout_configurations_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->add_receipt_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ReceiptLayoutConfiguration&gt;**](ReceiptLayoutConfiguration.md) | array of new receipt layout configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_receipt_layout_configuration

> delete_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id)

deletes the single receipt layout configuration

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_layout_configuration_id = 'receipt_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single receipt layout configuration
  api_instance.delete_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->delete_receipt_layout_configuration: #{e}"
end
```

#### Using the delete_receipt_layout_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id)

```ruby
begin
  # deletes the single receipt layout configuration
  data, status_code, headers = api_instance.delete_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->delete_receipt_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **receipt_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_receipt_layout_configurations

> <Array<AddOrUpdateResult>> delete_receipt_layout_configurations(korona_account_id, body)

deletes a batch of receipt layout configurations

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ReceiptLayoutConfiguration.new] # Array<ReceiptLayoutConfiguration> | array of existing receipt layout configurations (id or number required)

begin
  # deletes a batch of receipt layout configurations
  result = api_instance.delete_receipt_layout_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->delete_receipt_layout_configurations: #{e}"
end
```

#### Using the delete_receipt_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_receipt_layout_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of receipt layout configurations
  data, status_code, headers = api_instance.delete_receipt_layout_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->delete_receipt_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ReceiptLayoutConfiguration&gt;**](ReceiptLayoutConfiguration.md) | array of existing receipt layout configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_receipt_layout_configuration

> <ReceiptLayoutConfiguration> get_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id)

returns the single receipt layout configuration

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_layout_configuration_id = 'receipt_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single receipt layout configuration
  result = api_instance.get_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->get_receipt_layout_configuration: #{e}"
end
```

#### Using the get_receipt_layout_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReceiptLayoutConfiguration>, Integer, Hash)> get_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id)

```ruby
begin
  # returns the single receipt layout configuration
  data, status_code, headers = api_instance.get_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReceiptLayoutConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->get_receipt_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **receipt_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ReceiptLayoutConfiguration**](ReceiptLayoutConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipt_layout_configurations

> <ResultListReceiptLayoutConfiguration> get_receipt_layout_configurations(korona_account_id, opts)

lists all receipt layout configurations

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
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
  # lists all receipt layout configurations
  result = api_instance.get_receipt_layout_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->get_receipt_layout_configurations: #{e}"
end
```

#### Using the get_receipt_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListReceiptLayoutConfiguration>, Integer, Hash)> get_receipt_layout_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all receipt layout configurations
  data, status_code, headers = api_instance.get_receipt_layout_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListReceiptLayoutConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->get_receipt_layout_configurations_with_http_info: #{e}"
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

[**ResultListReceiptLayoutConfiguration**](ResultListReceiptLayoutConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_receipt_layout_configuration

> update_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id, body)

updates the single receipt layout configuration

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_layout_configuration_id = 'receipt_layout_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::ReceiptLayoutConfiguration.new # ReceiptLayoutConfiguration | the properties to update of the receipt layout configuration

begin
  # updates the single receipt layout configuration
  api_instance.update_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->update_receipt_layout_configuration: #{e}"
end
```

#### Using the update_receipt_layout_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, body)

```ruby
begin
  # updates the single receipt layout configuration
  data, status_code, headers = api_instance.update_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->update_receipt_layout_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **receipt_layout_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**ReceiptLayoutConfiguration**](ReceiptLayoutConfiguration.md) | the properties to update of the receipt layout configuration |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_receipt_layout_configurations

> <Array<AddOrUpdateResult>> update_receipt_layout_configurations(korona_account_id, body)

updates a batch of receipt layout configurations

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

api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ReceiptLayoutConfiguration.new] # Array<ReceiptLayoutConfiguration> | an array of existing receipt layout configurations

begin
  # updates a batch of receipt layout configurations
  result = api_instance.update_receipt_layout_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->update_receipt_layout_configurations: #{e}"
end
```

#### Using the update_receipt_layout_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_receipt_layout_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of receipt layout configurations
  data, status_code, headers = api_instance.update_receipt_layout_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptLayoutConfigurationsApi->update_receipt_layout_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ReceiptLayoutConfiguration&gt;**](ReceiptLayoutConfiguration.md) | an array of existing receipt layout configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

