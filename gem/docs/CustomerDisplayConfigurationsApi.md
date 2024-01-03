# KoronaCloudClient::CustomerDisplayConfigurationsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_customer_display_configurations**](CustomerDisplayConfigurationsApi.md#add_customer_display_configurations) | **POST** /accounts/{koronaAccountId}/customerDisplayConfigurations |  |
| [**delete_customer_display_configuration**](CustomerDisplayConfigurationsApi.md#delete_customer_display_configuration) | **DELETE** /accounts/{koronaAccountId}/customerDisplayConfigurations/{customerDisplayConfigurationId} |  |
| [**delete_customer_display_configurations**](CustomerDisplayConfigurationsApi.md#delete_customer_display_configurations) | **DELETE** /accounts/{koronaAccountId}/customerDisplayConfigurations |  |
| [**get_customer_display_configuration**](CustomerDisplayConfigurationsApi.md#get_customer_display_configuration) | **GET** /accounts/{koronaAccountId}/customerDisplayConfigurations/{customerDisplayConfigurationId} |  |
| [**get_customer_display_configurations**](CustomerDisplayConfigurationsApi.md#get_customer_display_configurations) | **GET** /accounts/{koronaAccountId}/customerDisplayConfigurations |  |
| [**update_customer_display_configurations**](CustomerDisplayConfigurationsApi.md#update_customer_display_configurations) | **PATCH** /accounts/{koronaAccountId}/customerDisplayConfigurations |  |


## add_customer_display_configurations

> <Array<AddOrUpdateResult>> add_customer_display_configurations(korona_account_id, customer_display_configuration, opts)



adds a batch of new customer display configurations

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_display_configuration = [KoronaCloudClient::CustomerDisplayConfiguration.new] # Array<CustomerDisplayConfiguration> | array of new customer display configurations
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_customer_display_configurations(korona_account_id, customer_display_configuration, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->add_customer_display_configurations: #{e}"
end
```

#### Using the add_customer_display_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->add_customer_display_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_display_configuration** | [**Array&lt;CustomerDisplayConfiguration&gt;**](CustomerDisplayConfiguration.md) | array of new customer display configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer_display_configuration

> delete_customer_display_configuration(korona_account_id, customer_display_configuration_id)



deletes the single customer display configuration

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_display_configuration_id = 'customer_display_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_customer_display_configuration(korona_account_id, customer_display_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->delete_customer_display_configuration: #{e}"
end
```

#### Using the delete_customer_display_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_customer_display_configuration_with_http_info(korona_account_id, customer_display_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customer_display_configuration_with_http_info(korona_account_id, customer_display_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->delete_customer_display_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_display_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customer_display_configurations

> <Array<AddOrUpdateResult>> delete_customer_display_configurations(korona_account_id, customer_display_configuration)



deletes a batch of customer display configurations

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_display_configuration = [KoronaCloudClient::CustomerDisplayConfiguration.new] # Array<CustomerDisplayConfiguration> | an array of existing customer display configurations

begin
  
  result = api_instance.delete_customer_display_configurations(korona_account_id, customer_display_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->delete_customer_display_configurations: #{e}"
end
```

#### Using the delete_customer_display_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->delete_customer_display_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_display_configuration** | [**Array&lt;CustomerDisplayConfiguration&gt;**](CustomerDisplayConfiguration.md) | an array of existing customer display configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer_display_configuration

> <CustomerDisplayConfiguration> get_customer_display_configuration(korona_account_id, customer_display_configuration_id)



returns the single customer display configuration

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_display_configuration_id = 'customer_display_configuration_id_example' # String | the number of the customer display configuration

begin
  
  result = api_instance.get_customer_display_configuration(korona_account_id, customer_display_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->get_customer_display_configuration: #{e}"
end
```

#### Using the get_customer_display_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDisplayConfiguration>, Integer, Hash)> get_customer_display_configuration_with_http_info(korona_account_id, customer_display_configuration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customer_display_configuration_with_http_info(korona_account_id, customer_display_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDisplayConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->get_customer_display_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_display_configuration_id** | **String** | the number of the customer display configuration |  |

### Return type

[**CustomerDisplayConfiguration**](CustomerDisplayConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_display_configurations

> <ResultListCustomerDisplayConfiguration> get_customer_display_configurations(korona_account_id, opts)



lists all customer display configurations

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
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
  
  result = api_instance.get_customer_display_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->get_customer_display_configurations: #{e}"
end
```

#### Using the get_customer_display_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCustomerDisplayConfiguration>, Integer, Hash)> get_customer_display_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customer_display_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCustomerDisplayConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->get_customer_display_configurations_with_http_info: #{e}"
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

[**ResultListCustomerDisplayConfiguration**](ResultListCustomerDisplayConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer_display_configurations

> <Array<AddOrUpdateResult>> update_customer_display_configurations(korona_account_id, customer_display_configuration)



updates a batch of customer display configurations; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_display_configuration = [KoronaCloudClient::CustomerDisplayConfiguration.new] # Array<CustomerDisplayConfiguration> | an array of existing customer display configurations

begin
  
  result = api_instance.update_customer_display_configurations(korona_account_id, customer_display_configuration)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->update_customer_display_configurations: #{e}"
end
```

#### Using the update_customer_display_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_customer_display_configurations_with_http_info(korona_account_id, customer_display_configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerDisplayConfigurationsApi->update_customer_display_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_display_configuration** | [**Array&lt;CustomerDisplayConfiguration&gt;**](CustomerDisplayConfiguration.md) | an array of existing customer display configurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

