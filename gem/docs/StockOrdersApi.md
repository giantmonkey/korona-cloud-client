# KoronaCloudClient::StockOrdersApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_stock_order**](StockOrdersApi.md#book_stock_order) | **PATCH** /accounts/{koronaAccountId}/stockOrders/{stockOrderId}/book |  |
| [**finalize_stock_order**](StockOrdersApi.md#finalize_stock_order) | **PATCH** /accounts/{koronaAccountId}/stockOrders/{stockOrderId}/finalize |  |
| [**get_stock_order**](StockOrdersApi.md#get_stock_order) | **GET** /accounts/{koronaAccountId}/stockOrders/{stockOrderId} |  |
| [**get_stock_order_items**](StockOrdersApi.md#get_stock_order_items) | **GET** /accounts/{koronaAccountId}/stockOrders/{stockOrderId}/items |  |
| [**get_stock_orders**](StockOrdersApi.md#get_stock_orders) | **GET** /accounts/{koronaAccountId}/stockOrders |  |


## book_stock_order

> book_stock_order(korona_account_id, stock_order_id)



book the single stock order

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.book_stock_order(korona_account_id, stock_order_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->book_stock_order: #{e}"
end
```

#### Using the book_stock_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_stock_order_with_http_info(korona_account_id, stock_order_id)

```ruby
begin
  
  data, status_code, headers = api_instance.book_stock_order_with_http_info(korona_account_id, stock_order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->book_stock_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_stock_order

> finalize_stock_order(korona_account_id, stock_order_id)



finalize the single stock order

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.finalize_stock_order(korona_account_id, stock_order_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->finalize_stock_order: #{e}"
end
```

#### Using the finalize_stock_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> finalize_stock_order_with_http_info(korona_account_id, stock_order_id)

```ruby
begin
  
  data, status_code, headers = api_instance.finalize_stock_order_with_http_info(korona_account_id, stock_order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->finalize_stock_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_order

> <StockOrder> get_stock_order(korona_account_id, stock_order_id, opts)



returns a single stock order

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  include_items: true # Boolean | include items of receipt (default: true; setting to false improves performance)
}

begin
  
  result = api_instance.get_stock_order(korona_account_id, stock_order_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_order: #{e}"
end
```

#### Using the get_stock_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockOrder>, Integer, Hash)> get_stock_order_with_http_info(korona_account_id, stock_order_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_order_with_http_info(korona_account_id, stock_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockOrder>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **include_items** | **Boolean** | include items of receipt (default: true; setting to false improves performance) | [optional] |

### Return type

[**StockOrder**](StockOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_order_items

> <ResultListStockOrderItem> get_stock_order_items(korona_account_id, stock_order_id, opts)



lists all stock order items

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_order_id = 'stock_order_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_stock_order_items(korona_account_id, stock_order_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_order_items: #{e}"
end
```

#### Using the get_stock_order_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockOrderItem>, Integer, Hash)> get_stock_order_items_with_http_info(korona_account_id, stock_order_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_order_items_with_http_info(korona_account_id, stock_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockOrderItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_order_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListStockOrderItem**](ResultListStockOrderItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_orders

> <ResultListStockOrder> get_stock_orders(korona_account_id, opts)



lists all stock orders

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

api_instance = KoronaCloudClient::StockOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  source_organizational_unit: 'source_organizational_unit_example', # String | source organizational unit
  booking_status: 'BOOKED', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example', # String | number of the related object
  finalized: true, # Boolean | load only objects with this finalized status
  include_items: true # Boolean | include items of receipt (default: true; setting to false improves performance)
}

begin
  
  result = api_instance.get_stock_orders(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_orders: #{e}"
end
```

#### Using the get_stock_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockOrder>, Integer, Hash)> get_stock_orders_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_orders_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockOrder>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockOrdersApi->get_stock_orders_with_http_info: #{e}"
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
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **organizational_unit** | **String** | organizational unit | [optional] |
| **source_organizational_unit** | **String** | source organizational unit | [optional] |
| **booking_status** | **String** | booking status (possible values: BOOKED, IN_PROGRESS) | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **finalized** | **Boolean** | load only objects with this finalized status | [optional] |
| **include_items** | **Boolean** | include items of receipt (default: true; setting to false improves performance) | [optional] |

### Return type

[**ResultListStockOrder**](ResultListStockOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

