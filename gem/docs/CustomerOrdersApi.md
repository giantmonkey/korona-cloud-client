# KoronaCloudClient::CustomerOrdersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customer_orders**](CustomerOrdersApi.md#add_customer_orders) | **POST** /accounts/{koronaAccountId}/customerOrders | adds a batch of new customer orders
[**delete_customer_order**](CustomerOrdersApi.md#delete_customer_order) | **DELETE** /accounts/{koronaAccountId}/customerOrders/{customerOrderId} | deletes the single customer order
[**get_customer_order**](CustomerOrdersApi.md#get_customer_order) | **GET** /accounts/{koronaAccountId}/customerOrders/{customerOrderId} | returns the single customer order
[**get_customer_orders**](CustomerOrdersApi.md#get_customer_orders) | **GET** /accounts/{koronaAccountId}/customerOrders | lists all customer orders
[**update_customer_order**](CustomerOrdersApi.md#update_customer_order) | **PATCH** /accounts/{koronaAccountId}/customerOrders/{customerOrderId} | updates the single customer order
[**update_customer_orders**](CustomerOrdersApi.md#update_customer_orders) | **PATCH** /accounts/{koronaAccountId}/customerOrders | updates a batch of customer orders



## add_customer_orders

> Array&lt;AddOrUpdateResult&gt; add_customer_orders(korona_account_id, body)

adds a batch of new customer orders

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CustomerOrder.new] # Array<CustomerOrder> | array of new customer orders

begin
  #adds a batch of new customer orders
  result = api_instance.add_customer_orders(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->add_customer_orders: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;CustomerOrder&gt;**](CustomerOrder.md)| array of new customer orders | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer_order

> delete_customer_order(korona_account_id, customer_order_id, opts)

deletes the single customer order

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_order_id = 'customer_order_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  number: 'number_example' # String | number of the related object
}

begin
  #deletes the single customer order
  api_instance.delete_customer_order(korona_account_id, customer_order_id, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->delete_customer_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_order_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **number** | **String**| number of the related object | [optional] 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_order

> CustomerOrder get_customer_order(korona_account_id, customer_order_id)

returns the single customer order

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_order_id = 'customer_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single customer order
  result = api_instance.get_customer_order(korona_account_id, customer_order_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->get_customer_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_order_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**CustomerOrder**](CustomerOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_orders

> ResultListCustomerOrder get_customer_orders(korona_account_id, opts)

lists all customer orders

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_pick_up_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_pick_up_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all customer orders
  result = api_instance.get_customer_orders(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->get_customer_orders: #{e}"
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
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **min_pick_up_time** | **DateTime**| min (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_pick_up_time** | **DateTime**| max (inclusive) pick up time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListCustomerOrder**](ResultListCustomerOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer_order

> update_customer_order(korona_account_id, customer_order_id, body)

updates the single customer order

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_order_id = 'customer_order_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::CustomerOrder.new # CustomerOrder | the properties to update of the customer order

begin
  #updates the single customer order
  api_instance.update_customer_order(korona_account_id, customer_order_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->update_customer_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_order_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**CustomerOrder**](CustomerOrder.md)| the properties to update of the customer order | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customer_orders

> Array&lt;AddOrUpdateResult&gt; update_customer_orders(korona_account_id, body)

updates a batch of customer orders

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::CustomerOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CustomerOrder.new] # Array<CustomerOrder> | an array of existing customer orders

begin
  #updates a batch of customer orders
  result = api_instance.update_customer_orders(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerOrdersApi->update_customer_orders: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;CustomerOrder&gt;**](CustomerOrder.md)| an array of existing customer orders | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

