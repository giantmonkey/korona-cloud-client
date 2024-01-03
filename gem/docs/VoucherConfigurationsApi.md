# KoronaCloudClient::VoucherConfigurationsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_voucher_configurations**](VoucherConfigurationsApi.md#add_voucher_configurations) | **POST** /accounts/{koronaAccountId}/voucherConfigurations |  |
| [**delete_voucher_configuration**](VoucherConfigurationsApi.md#delete_voucher_configuration) | **DELETE** /accounts/{koronaAccountId}/voucherConfigurations/{voucherConfigurationId} |  |
| [**delete_voucher_configurations**](VoucherConfigurationsApi.md#delete_voucher_configurations) | **DELETE** /accounts/{koronaAccountId}/voucherConfigurations |  |
| [**get_voucher_configuration**](VoucherConfigurationsApi.md#get_voucher_configuration) | **GET** /accounts/{koronaAccountId}/voucherConfigurations/{voucherConfigurationId} |  |
| [**get_voucher_configurations**](VoucherConfigurationsApi.md#get_voucher_configurations) | **GET** /accounts/{koronaAccountId}/voucherConfigurations |  |
| [**update_voucher_configuration**](VoucherConfigurationsApi.md#update_voucher_configuration) | **PATCH** /accounts/{koronaAccountId}/voucherConfigurations/{voucherConfigurationId} |  |
| [**update_voucher_configurations**](VoucherConfigurationsApi.md#update_voucher_configurations) | **PATCH** /accounts/{koronaAccountId}/voucherConfigurations |  |


## add_voucher_configurations

> <Array<AddOrUpdateResult>> add_voucher_configurations(korona_account_id, voucher_configuration, opts)



adds a batch of new voucher configurations

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration = [KoronaCloudClient::VoucherConfiguration.new] # Array<VoucherConfiguration> | array of new voucher configurations
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_voucher_configurations(korona_account_id, voucher_configuration, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->add_voucher_configurations: #{e}"
end
```

#### Using the add_voucher_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_voucher_configurations_with_http_info(korona_account_id, voucher_configuration, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_voucher_configurations_with_http_info(korona_account_id, voucher_configuration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->add_voucher_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration** | [**Array&lt;VoucherConfiguration&gt;**](VoucherConfiguration.md) | array of new voucher configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_voucher_configuration

> delete_voucher_configuration(korona_account_id, voucher_configuration_id)



deletes the single voucher configuration

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration_id = 'voucher_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_voucher_configuration(korona_account_id, voucher_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->delete_voucher_configuration: #{e}"
end
```

#### Using the delete_voucher_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->delete_voucher_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_voucher_configurations

> <Array<AddOrUpdateResult>> delete_voucher_configurations(korona_account_id, voucher_configuration)



deletes a batch of voucher configurations

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration = [KoronaCloudClient::VoucherConfiguration.new] # Array<VoucherConfiguration> | array of existing voucher configurations (id or number required)

begin
  
  result = api_instance.delete_voucher_configurations(korona_account_id, voucher_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->delete_voucher_configurations: #{e}"
end
```

#### Using the delete_voucher_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_voucher_configurations_with_http_info(korona_account_id, voucher_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_voucher_configurations_with_http_info(korona_account_id, voucher_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->delete_voucher_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration** | [**Array&lt;VoucherConfiguration&gt;**](VoucherConfiguration.md) | array of existing voucher configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_voucher_configuration

> <VoucherConfiguration> get_voucher_configuration(korona_account_id, voucher_configuration_id)



returns the single voucher configuration

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration_id = 'voucher_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_voucher_configuration(korona_account_id, voucher_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->get_voucher_configuration: #{e}"
end
```

#### Using the get_voucher_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherConfiguration>, Integer, Hash)> get_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->get_voucher_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**VoucherConfiguration**](VoucherConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_configurations

> <ResultListVoucherConfiguration> get_voucher_configurations(korona_account_id, opts)



lists all voucher configurations

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
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
  
  result = api_instance.get_voucher_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->get_voucher_configurations: #{e}"
end
```

#### Using the get_voucher_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherConfiguration>, Integer, Hash)> get_voucher_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->get_voucher_configurations_with_http_info: #{e}"
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

[**ResultListVoucherConfiguration**](ResultListVoucherConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voucher_configuration

> update_voucher_configuration(korona_account_id, voucher_configuration_id, voucher_configuration)



updates the single voucher configuration

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration_id = 'voucher_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_configuration = KoronaCloudClient::VoucherConfiguration.new # VoucherConfiguration | the properties to update of the voucher

begin
  
  api_instance.update_voucher_configuration(korona_account_id, voucher_configuration_id, voucher_configuration)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->update_voucher_configuration: #{e}"
end
```

#### Using the update_voucher_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id, voucher_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_voucher_configuration_with_http_info(korona_account_id, voucher_configuration_id, voucher_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->update_voucher_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_configuration** | [**VoucherConfiguration**](VoucherConfiguration.md) | the properties to update of the voucher |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_voucher_configurations

> <Array<AddOrUpdateResult>> update_voucher_configurations(korona_account_id, voucher_configuration)



updates a batch of voucher configurations; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::VoucherConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_configuration = [KoronaCloudClient::VoucherConfiguration.new] # Array<VoucherConfiguration> | an array of existing voucher configurations

begin
  
  result = api_instance.update_voucher_configurations(korona_account_id, voucher_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->update_voucher_configurations: #{e}"
end
```

#### Using the update_voucher_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_voucher_configurations_with_http_info(korona_account_id, voucher_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_voucher_configurations_with_http_info(korona_account_id, voucher_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherConfigurationsApi->update_voucher_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_configuration** | [**Array&lt;VoucherConfiguration&gt;**](VoucherConfiguration.md) | an array of existing voucher configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

