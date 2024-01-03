# KoronaCloudClient::CustomersApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_customers**](CustomersApi.md#add_customers) | **POST** /accounts/{koronaAccountId}/customers |  |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /accounts/{koronaAccountId}/customers/{customerId} |  |
| [**delete_customers**](CustomersApi.md#delete_customers) | **DELETE** /accounts/{koronaAccountId}/customers |  |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /accounts/{koronaAccountId}/customers/{customerId} |  |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /accounts/{koronaAccountId}/customers |  |
| [**update_customer**](CustomersApi.md#update_customer) | **PATCH** /accounts/{koronaAccountId}/customers/{customerId} |  |
| [**update_customers**](CustomersApi.md#update_customers) | **PATCH** /accounts/{koronaAccountId}/customers |  |


## add_customers

> <Array<AddOrUpdateResult>> add_customers(korona_account_id, customer, opts)



adds a batch of new customers

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer = [KoronaCloudClient::Customer.new] # Array<Customer> | array of new customers
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_customers(korona_account_id, customer, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->add_customers: #{e}"
end
```

#### Using the add_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_customers_with_http_info(korona_account_id, customer, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_customers_with_http_info(korona_account_id, customer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->add_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer** | [**Array&lt;Customer&gt;**](Customer.md) | array of new customers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer

> delete_customer(korona_account_id, customer_id)



deletes the single customer

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_id = 'customer_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_customer(korona_account_id, customer_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_customer_with_http_info(korona_account_id, customer_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customer_with_http_info(korona_account_id, customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customers

> <Array<AddOrUpdateResult>> delete_customers(korona_account_id, customer)



deletes a batch of customers

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer = [KoronaCloudClient::Customer.new] # Array<Customer> | array of existing customers (id or number required)

begin
  
  result = api_instance.delete_customers(korona_account_id, customer)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customers: #{e}"
end
```

#### Using the delete_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_customers_with_http_info(korona_account_id, customer)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customers_with_http_info(korona_account_id, customer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer** | [**Array&lt;Customer&gt;**](Customer.md) | array of existing customers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <Customer> get_customer(korona_account_id, customer_id)



returns the single customer

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_id = 'customer_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_customer(korona_account_id, customer_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(korona_account_id, customer_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customer_with_http_info(korona_account_id, customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> <ResultListCustomer> get_customers(korona_account_id, opts)



lists all customers

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

api_instance = KoronaCloudClient::CustomersApi.new
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
  
  result = api_instance.get_customers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCustomer>, Integer, Hash)> get_customers_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCustomer>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
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

[**ResultListCustomer**](ResultListCustomer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> update_customer(korona_account_id, customer_id, customer)



updates the single customer

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_id = 'customer_id_example' # String | id of the related object (important: id should match the uuid-format)
customer = KoronaCloudClient::Customer.new # Customer | the properties to update of the customer

begin
  
  api_instance.update_customer(korona_account_id, customer_id, customer)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customer_with_http_info(korona_account_id, customer_id, customer)

```ruby
begin
  
  data, status_code, headers = api_instance.update_customer_with_http_info(korona_account_id, customer_id, customer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **customer** | [**Customer**](Customer.md) | the properties to update of the customer |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers

> <Array<AddOrUpdateResult>> update_customers(korona_account_id, customer)



updates a batch of customers

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

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer = [KoronaCloudClient::Customer.new] # Array<Customer> | array of existing customers (id or number required)

begin
  
  result = api_instance.update_customers(korona_account_id, customer)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->update_customers: #{e}"
end
```

#### Using the update_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_customers_with_http_info(korona_account_id, customer)

```ruby
begin
  
  data, status_code, headers = api_instance.update_customers_with_http_info(korona_account_id, customer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomersApi->update_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer** | [**Array&lt;Customer&gt;**](Customer.md) | array of existing customers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

