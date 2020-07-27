# KoronaCloudClient::StockOrdersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**book_stock_order**](StockOrdersApi.md#book_stock_order) | **PATCH** /accounts/{koronaAccountId}/stockOrders/{stockOrderId}/book | book the single stock order
[**get_stock_order**](StockOrdersApi.md#get_stock_order) | **GET** /accounts/{koronaAccountId}/stockOrders/{stockOrderId} | returns a single stock order
[**get_stock_orders**](StockOrdersApi.md#get_stock_orders) | **GET** /accounts/{koronaAccountId}/stockOrders | lists all stock orders



## book_stock_order

> book_stock_order(korona_account_id, stock_order_id)

book the single stock order

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #book the single stock order
  api_instance.book_stock_order(korona_account_id, stock_order_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling StockOrdersApi->book_stock_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **stock_order_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_order

> StockOrder get_stock_order(korona_account_id, stock_order_id)

returns a single stock order

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns a single stock order
  result = api_instance.get_stock_order(korona_account_id, stock_order_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling StockOrdersApi->get_stock_order: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **stock_order_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**StockOrder**](StockOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_orders

> ResultListStockOrder get_stock_orders(korona_account_id, opts)

lists all stock orders

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  source_organizational_unit: 'source_organizational_unit_example', # String | source organizational unit
  booking_status: 'booking_status_example', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all stock orders
  result = api_instance.get_stock_orders(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling StockOrdersApi->get_stock_orders: #{e}"
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
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **source_organizational_unit** | **String**| source organizational unit | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListStockOrder**](ResultListStockOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

