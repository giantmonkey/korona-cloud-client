# KoronaCloudClient::PaymentMethodCategoriesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_payment_method_categories**](PaymentMethodCategoriesApi.md#add_payment_method_categories) | **POST** /accounts/{koronaAccountId}/paymentMethodCategories |  |
| [**delete_payment_method_categories**](PaymentMethodCategoriesApi.md#delete_payment_method_categories) | **DELETE** /accounts/{koronaAccountId}/paymentMethodCategories |  |
| [**delete_payment_method_category**](PaymentMethodCategoriesApi.md#delete_payment_method_category) | **DELETE** /accounts/{koronaAccountId}/paymentMethodCategories/{paymentMethodCategoryId} |  |
| [**get_payment_method_categories**](PaymentMethodCategoriesApi.md#get_payment_method_categories) | **GET** /accounts/{koronaAccountId}/paymentMethodCategories |  |
| [**get_payment_method_category**](PaymentMethodCategoriesApi.md#get_payment_method_category) | **GET** /accounts/{koronaAccountId}/paymentMethodCategories/{paymentMethodCategoryId} |  |
| [**update_payment_method_categories**](PaymentMethodCategoriesApi.md#update_payment_method_categories) | **PATCH** /accounts/{koronaAccountId}/paymentMethodCategories |  |
| [**update_payment_method_category**](PaymentMethodCategoriesApi.md#update_payment_method_category) | **PATCH** /accounts/{koronaAccountId}/paymentMethodCategories/{paymentMethodCategoryId} |  |


## add_payment_method_categories

> <Array<AddOrUpdateResult>> add_payment_method_categories(korona_account_id, payment_method_category, opts)



adds a batch of new payment method categories

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category = [KoronaCloudClient::PaymentMethodCategory.new] # Array<PaymentMethodCategory> | array of new payment method categories
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_payment_method_categories(korona_account_id, payment_method_category, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->add_payment_method_categories: #{e}"
end
```

#### Using the add_payment_method_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_payment_method_categories_with_http_info(korona_account_id, payment_method_category, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_payment_method_categories_with_http_info(korona_account_id, payment_method_category, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->add_payment_method_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category** | [**Array&lt;PaymentMethodCategory&gt;**](PaymentMethodCategory.md) | array of new payment method categories |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_method_categories

> <Array<AddOrUpdateResult>> delete_payment_method_categories(korona_account_id, payment_method_category)



deletes a batch of payment method categories

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category = [KoronaCloudClient::PaymentMethodCategory.new] # Array<PaymentMethodCategory> | array of existing payment method categories (id or number required)

begin
  
  result = api_instance.delete_payment_method_categories(korona_account_id, payment_method_category)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->delete_payment_method_categories: #{e}"
end
```

#### Using the delete_payment_method_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_payment_method_categories_with_http_info(korona_account_id, payment_method_category)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_payment_method_categories_with_http_info(korona_account_id, payment_method_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->delete_payment_method_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category** | [**Array&lt;PaymentMethodCategory&gt;**](PaymentMethodCategory.md) | array of existing payment method categories (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_method_category

> delete_payment_method_category(korona_account_id, payment_method_category_id)



deletes the single payment method category

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category_id = 'payment_method_category_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_payment_method_category(korona_account_id, payment_method_category_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->delete_payment_method_category: #{e}"
end
```

#### Using the delete_payment_method_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_category_with_http_info(korona_account_id, payment_method_category_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_payment_method_category_with_http_info(korona_account_id, payment_method_category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->delete_payment_method_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_method_categories

> <ResultListPaymentMethodCategory> get_payment_method_categories(korona_account_id, opts)



lists all payment method categories

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
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
  
  result = api_instance.get_payment_method_categories(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->get_payment_method_categories: #{e}"
end
```

#### Using the get_payment_method_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPaymentMethodCategory>, Integer, Hash)> get_payment_method_categories_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payment_method_categories_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPaymentMethodCategory>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->get_payment_method_categories_with_http_info: #{e}"
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

[**ResultListPaymentMethodCategory**](ResultListPaymentMethodCategory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_method_category

> <PaymentMethodCategory> get_payment_method_category(korona_account_id, payment_method_category_id)



returns the single payment method category

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category_id = 'payment_method_category_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_payment_method_category(korona_account_id, payment_method_category_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->get_payment_method_category: #{e}"
end
```

#### Using the get_payment_method_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodCategory>, Integer, Hash)> get_payment_method_category_with_http_info(korona_account_id, payment_method_category_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payment_method_category_with_http_info(korona_account_id, payment_method_category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodCategory>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->get_payment_method_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PaymentMethodCategory**](PaymentMethodCategory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_method_categories

> <Array<AddOrUpdateResult>> update_payment_method_categories(korona_account_id, payment_method_category)



updates a batch of payment method categories; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category = [KoronaCloudClient::PaymentMethodCategory.new] # Array<PaymentMethodCategory> | an array of existing payment method categories

begin
  
  result = api_instance.update_payment_method_categories(korona_account_id, payment_method_category)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->update_payment_method_categories: #{e}"
end
```

#### Using the update_payment_method_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_payment_method_categories_with_http_info(korona_account_id, payment_method_category)

```ruby
begin
  
  data, status_code, headers = api_instance.update_payment_method_categories_with_http_info(korona_account_id, payment_method_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->update_payment_method_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category** | [**Array&lt;PaymentMethodCategory&gt;**](PaymentMethodCategory.md) | an array of existing payment method categories |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_payment_method_category

> update_payment_method_category(korona_account_id, payment_method_category_id, payment_method_category)



updates the single payment method category; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::PaymentMethodCategoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_category_id = 'payment_method_category_id_example' # String | id of the related object (important: id should match the uuid-format)
payment_method_category = KoronaCloudClient::PaymentMethodCategory.new # PaymentMethodCategory | the properties to update of the payment method

begin
  
  api_instance.update_payment_method_category(korona_account_id, payment_method_category_id, payment_method_category)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->update_payment_method_category: #{e}"
end
```

#### Using the update_payment_method_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_payment_method_category_with_http_info(korona_account_id, payment_method_category_id, payment_method_category)

```ruby
begin
  
  data, status_code, headers = api_instance.update_payment_method_category_with_http_info(korona_account_id, payment_method_category_id, payment_method_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodCategoriesApi->update_payment_method_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_category_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **payment_method_category** | [**PaymentMethodCategory**](PaymentMethodCategory.md) | the properties to update of the payment method |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

