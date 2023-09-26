# KoronaCloudClient::PaymentMethodsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_payment_methods**](PaymentMethodsApi.md#add_payment_methods) | **POST** /accounts/{koronaAccountId}/paymentMethods |  |
| [**delete_payment_method**](PaymentMethodsApi.md#delete_payment_method) | **DELETE** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} |  |
| [**delete_payment_methods**](PaymentMethodsApi.md#delete_payment_methods) | **DELETE** /accounts/{koronaAccountId}/paymentMethods |  |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} |  |
| [**get_payment_methods**](PaymentMethodsApi.md#get_payment_methods) | **GET** /accounts/{koronaAccountId}/paymentMethods |  |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **PATCH** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} |  |
| [**update_payment_methods**](PaymentMethodsApi.md#update_payment_methods) | **PATCH** /accounts/{koronaAccountId}/paymentMethods |  |


## add_payment_methods

> <Array<AddOrUpdateResult>> add_payment_methods(korona_account_id, payment_method, opts)



adds a batch of new payment methods

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | array of new payment methods
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_payment_methods(korona_account_id, payment_method, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->add_payment_methods: #{e}"
end
```

#### Using the add_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_payment_methods_with_http_info(korona_account_id, payment_method, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_payment_methods_with_http_info(korona_account_id, payment_method, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->add_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | array of new payment methods |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_method

> delete_payment_method(korona_account_id, payment_method_id)



deletes the single payment method

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_payment_method(korona_account_id, payment_method_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_with_http_info(korona_account_id, payment_method_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(korona_account_id, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_payment_methods

> <Array<AddOrUpdateResult>> delete_payment_methods(korona_account_id, payment_method)



deletes a batch of payment methods

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | array of existing payment methods (id or number required)

begin
  
  result = api_instance.delete_payment_methods(korona_account_id, payment_method)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_methods: #{e}"
end
```

#### Using the delete_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_payment_methods_with_http_info(korona_account_id, payment_method)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_payment_methods_with_http_info(korona_account_id, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | array of existing payment methods (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_method

> <PaymentMethod> get_payment_method(korona_account_id, payment_method_id)



returns the single payment method

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_payment_method(korona_account_id, payment_method_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethod>, Integer, Hash)> get_payment_method_with_http_info(korona_account_id, payment_method_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payment_method_with_http_info(korona_account_id, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethod>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_methods

> <ResultListPaymentMethod> get_payment_methods(korona_account_id, opts)



lists all payment methods

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
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
  
  result = api_instance.get_payment_methods(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_methods: #{e}"
end
```

#### Using the get_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPaymentMethod>, Integer, Hash)> get_payment_methods_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payment_methods_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPaymentMethod>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_methods_with_http_info: #{e}"
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

[**ResultListPaymentMethod**](ResultListPaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_method

> update_payment_method(korona_account_id, payment_method_id, payment_method)



updates the single payment method; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)
payment_method = KoronaCloudClient::PaymentMethod.new # PaymentMethod | the properties to update of the payment method

begin
  
  api_instance.update_payment_method(korona_account_id, payment_method_id, payment_method)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the update_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_payment_method_with_http_info(korona_account_id, payment_method_id, payment_method)

```ruby
begin
  
  data, status_code, headers = api_instance.update_payment_method_with_http_info(korona_account_id, payment_method_id, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) | the properties to update of the payment method |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_payment_methods

> <Array<AddOrUpdateResult>> update_payment_methods(korona_account_id, payment_method)



updates a batch of payment methods; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | an array of existing payment methods

begin
  
  result = api_instance.update_payment_methods(korona_account_id, payment_method)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_methods: #{e}"
end
```

#### Using the update_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_payment_methods_with_http_info(korona_account_id, payment_method)

```ruby
begin
  
  data, status_code, headers = api_instance.update_payment_methods_with_http_info(korona_account_id, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | an array of existing payment methods |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

