# KoronaClient::CustomersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customers**](CustomersApi.md#add_customers) | **POST** /accounts/{koronaAccountId}/customers | adds a batch of new customers
[**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /accounts/{koronaAccountId}/customers/{customerIdOrNumber} | deletes the customer
[**get_customer**](CustomersApi.md#get_customer) | **GET** /accounts/{koronaAccountId}/customers/{customerIdOrNumber} | lists the customer
[**get_customers**](CustomersApi.md#get_customers) | **GET** /accounts/{koronaAccountId}/customers | lists all customers
[**update_customer**](CustomersApi.md#update_customer) | **PATCH** /accounts/{koronaAccountId}/customers/{customerIdOrNumber} | updates the customer
[**update_customers**](CustomersApi.md#update_customers) | **PATCH** /accounts/{koronaAccountId}/customers | changes a batch of customers


# **add_customers**
> Array&lt;AddOrUpdateResult&gt; add_customers(korona_account_id, body)

adds a batch of new customers



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::Customer.new] # Array<Customer> | a array of new customers


begin
  #adds a batch of new customers
  result = api_instance.add_customers(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->add_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;Customer&gt;**](Customer.md)| a array of new customers | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer**
> delete_customer(korona_account_id, customer_id_or_number)

deletes the customer



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_id_or_number = "customer_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the customer
  api_instance.delete_customer(korona_account_id, customer_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customer**
> Customer get_customer(korona_account_id, customer_id_or_number)

lists the customer



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_id_or_number = "customer_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the customer
  result = api_instance.get_customer(korona_account_id, customer_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Customer**](Customer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customers**
> ResultListCustomer get_customers(korona_account_id, opts)

lists all customers



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all customers
  result = api_instance.get_customers(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListCustomer**](ResultListCustomer.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customer**
> update_customer(korona_account_id, customer_id_or_number, body)

updates the customer



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_id_or_number = "customer_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::Customer.new # Customer | the properties to update of the customer


begin
  #updates the customer
  api_instance.update_customer(korona_account_id, customer_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->update_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Customer**](Customer.md)| the properties to update of the customer | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customers**
> Array&lt;AddOrUpdateResult&gt; update_customers(korona_account_id, body)

changes a batch of customers

[number] must be set in the objects, otherwise the object cannot be updated

### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::CustomersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::Customer.new] # Array<Customer> | a array of existing customers


begin
  #changes a batch of customers
  result = api_instance.update_customers(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomersApi->update_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;Customer&gt;**](Customer.md)| a array of existing customers | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



