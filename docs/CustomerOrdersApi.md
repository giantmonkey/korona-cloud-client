# KoronaClient::CustomerOrdersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customer_orders**](CustomerOrdersApi.md#add_customer_orders) | **POST** /accounts/{koronaAccountId}/customerOrders | adds a batch of new customer orders
[**delete_customer_order**](CustomerOrdersApi.md#delete_customer_order) | **DELETE** /accounts/{koronaAccountId}/customerOrders/{customerOrderIdOrNumber} | deletes the customer order
[**get_customer_order**](CustomerOrdersApi.md#get_customer_order) | **GET** /accounts/{koronaAccountId}/customerOrders/{customerOrderIdOrNumber} | lists the customer order
[**get_customer_orders**](CustomerOrdersApi.md#get_customer_orders) | **GET** /accounts/{koronaAccountId}/customerOrders | lists all customer orders
[**update_customer_order**](CustomerOrdersApi.md#update_customer_order) | **PATCH** /accounts/{koronaAccountId}/customerOrders/{customerOrderIdOrNumber} | changes the customer order
[**update_customer_orders**](CustomerOrdersApi.md#update_customer_orders) | **PATCH** /accounts/{koronaAccountId}/customerOrders | changes a batch of customer orders


# **add_customer_orders**
> Array&lt;AddOrUpdateResult&gt; add_customer_orders(korona_account_id, body)

adds a batch of new customer orders



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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::CustomerOrder.new] # Array<CustomerOrder> | a array of new customer orders


begin
  #adds a batch of new customer orders
  result = api_instance.add_customer_orders(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->add_customer_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;CustomerOrder&gt;**](CustomerOrder.md)| a array of new customer orders | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer_order**
> delete_customer_order(korona_account_id, customer_order_id_or_number)

deletes the customer order



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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_order_id_or_number = "customer_order_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the customer order
  api_instance.delete_customer_order(korona_account_id, customer_order_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->delete_customer_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_order_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customer_order**
> CustomerOrder get_customer_order(korona_account_id, customer_order_id_or_number)

lists the customer order



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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_order_id_or_number = "customer_order_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the customer order
  result = api_instance.get_customer_order(korona_account_id, customer_order_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->get_customer_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_order_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**CustomerOrder**](CustomerOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customer_orders**
> ResultListCustomerOrder get_customer_orders(korona_account_id, opts)

lists all customer orders



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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
  min_create_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | min (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  max_create_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | max (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  min_pick_up_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | min (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone)
  max_pick_up_time: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | max (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone)
}

begin
  #lists all customer orders
  result = api_instance.get_customer_orders(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->get_customer_orders: #{e}"
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
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **min_pick_up_time** | **DateTime**| min (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_pick_up_time** | **DateTime**| max (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone) | [optional] 

### Return type

[**ResultListCustomerOrder**](ResultListCustomerOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customer_order**
> update_customer_order(korona_account_id, customer_order_id_or_number, body)

changes the customer order

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

customer_order_id_or_number = "customer_order_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::CustomerOrder.new # CustomerOrder | the properties to update of the customer order


begin
  #changes the customer order
  api_instance.update_customer_order(korona_account_id, customer_order_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->update_customer_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **customer_order_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**CustomerOrder**](CustomerOrder.md)| the properties to update of the customer order | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customer_orders**
> Array&lt;AddOrUpdateResult&gt; update_customer_orders(korona_account_id, body)

changes a batch of customer orders

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

api_instance = KoronaClient::CustomerOrdersApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::CustomerOrder.new] # Array<CustomerOrder> | a array of existing customer orders


begin
  #changes a batch of customer orders
  result = api_instance.update_customer_orders(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->update_customer_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;CustomerOrder&gt;**](CustomerOrder.md)| a array of existing customer orders | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



