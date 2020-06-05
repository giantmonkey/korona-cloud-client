# KoronaCloudClient::CustomersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customers**](CustomersApi.md#add_customers) | **POST** /accounts/{koronaAccountId}/customers | adds a batch of new customers
[**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /accounts/{koronaAccountId}/customers/{customerId} | deletes the single customer
[**delete_customers**](CustomersApi.md#delete_customers) | **DELETE** /accounts/{koronaAccountId}/customers | deletes a batch of customers
[**get_customer**](CustomersApi.md#get_customer) | **GET** /accounts/{koronaAccountId}/customers/{customerId} | returns the single customer
[**get_customers**](CustomersApi.md#get_customers) | **GET** /accounts/{koronaAccountId}/customers | lists all customers
[**update_customer**](CustomersApi.md#update_customer) | **PATCH** /accounts/{koronaAccountId}/customers/{customerId} | updates the single customer
[**update_customers**](CustomersApi.md#update_customers) | **PATCH** /accounts/{koronaAccountId}/customers | updates a batch of customers



## add_customers

> Array&lt;AddOrUpdateResult&gt; add_customers(korona_account_id, body, opts)

adds a batch of new customers

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Customer.new] # Array<Customer> | array of new customers
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new customers
  result = api_instance.add_customers(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->add_customers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Customer&gt;**](Customer.md)| array of new customers | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

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

### Example

```ruby
# load the gem
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
  #deletes the single customer
  api_instance.delete_customer(korona_account_id, customer_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customers

> Array&lt;AddOrUpdateResult&gt; delete_customers(korona_account_id, body)

deletes a batch of customers

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Customer.new] # Array<Customer> | array of existing customers (id or number required)

begin
  #deletes a batch of customers
  result = api_instance.delete_customers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->delete_customers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Customer&gt;**](Customer.md)| array of existing customers (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> Customer get_customer(korona_account_id, customer_id)

returns the single customer

### Example

```ruby
# load the gem
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
  #returns the single customer
  result = api_instance.get_customer(korona_account_id, customer_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> ResultListCustomer get_customers(korona_account_id, opts)

lists all customers

### Example

```ruby
# load the gem
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
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all customers
  result = api_instance.get_customers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListCustomer**](ResultListCustomer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> update_customer(korona_account_id, customer_id, body)

updates the single customer

### Example

```ruby
# load the gem
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
body = KoronaCloudClient::Customer.new # Customer | the properties to update of the customer

begin
  #updates the single customer
  api_instance.update_customer(korona_account_id, customer_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->update_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Customer**](Customer.md)| the properties to update of the customer | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers

> Array&lt;AddOrUpdateResult&gt; update_customers(korona_account_id, body)

updates a batch of customers

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CustomersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Customer.new] # Array<Customer> | array of existing customers (id or number required)

begin
  #updates a batch of customers
  result = api_instance.update_customers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomersApi->update_customers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Customer&gt;**](Customer.md)| array of existing customers (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

