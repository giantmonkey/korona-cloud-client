# KoronaCloudClient::StockAdjustmentsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_stock_adjustment_items**](StockAdjustmentsApi.md#add_stock_adjustment_items) | **POST** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items |  |
| [**add_stock_adjustments**](StockAdjustmentsApi.md#add_stock_adjustments) | **POST** /accounts/{koronaAccountId}/stockAdjustments |  |
| [**book_stock_adjustment**](StockAdjustmentsApi.md#book_stock_adjustment) | **PATCH** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/book |  |
| [**delete_stock_adjustment_item**](StockAdjustmentsApi.md#delete_stock_adjustment_item) | **DELETE** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items/{productId} |  |
| [**get_stock_adjustment**](StockAdjustmentsApi.md#get_stock_adjustment) | **GET** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId} |  |
| [**get_stock_adjustment_item**](StockAdjustmentsApi.md#get_stock_adjustment_item) | **GET** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items/{productId} |  |
| [**get_stock_adjustment_items**](StockAdjustmentsApi.md#get_stock_adjustment_items) | **GET** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items |  |
| [**get_stock_adjustments**](StockAdjustmentsApi.md#get_stock_adjustments) | **GET** /accounts/{koronaAccountId}/stockAdjustments |  |
| [**update_stock_adjustment**](StockAdjustmentsApi.md#update_stock_adjustment) | **PATCH** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId} |  |
| [**update_stock_adjustment_item**](StockAdjustmentsApi.md#update_stock_adjustment_item) | **PATCH** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items/{productId} |  |
| [**update_stock_adjustment_items**](StockAdjustmentsApi.md#update_stock_adjustment_items) | **PATCH** /accounts/{koronaAccountId}/stockAdjustments/{stockAdjustmentId}/items |  |


## add_stock_adjustment_items

> <Array<AddOrUpdateResult>> add_stock_adjustment_items(korona_account_id, stock_adjustment_id, stock_adjustment_item)



adds stock adjustment items

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_adjustment_item = [KoronaCloudClient::StockAdjustmentItem.new] # Array<StockAdjustmentItem> | data to add

begin
  
  result = api_instance.add_stock_adjustment_items(korona_account_id, stock_adjustment_id, stock_adjustment_item)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->add_stock_adjustment_items: #{e}"
end
```

#### Using the add_stock_adjustment_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment_item)

```ruby
begin
  
  data, status_code, headers = api_instance.add_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->add_stock_adjustment_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_adjustment_item** | [**Array&lt;StockAdjustmentItem&gt;**](StockAdjustmentItem.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_stock_adjustments

> <Array<AddOrUpdateResult>> add_stock_adjustments(korona_account_id, stock_adjustment)



adds stock adjustments

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment = [KoronaCloudClient::StockAdjustment.new] # Array<StockAdjustment> | data to add

begin
  
  result = api_instance.add_stock_adjustments(korona_account_id, stock_adjustment)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->add_stock_adjustments: #{e}"
end
```

#### Using the add_stock_adjustments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_stock_adjustments_with_http_info(korona_account_id, stock_adjustment)

```ruby
begin
  
  data, status_code, headers = api_instance.add_stock_adjustments_with_http_info(korona_account_id, stock_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->add_stock_adjustments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment** | [**Array&lt;StockAdjustment&gt;**](StockAdjustment.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_stock_adjustment

> book_stock_adjustment(korona_account_id, stock_adjustment_id)



book the single stock adjustment

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.book_stock_adjustment(korona_account_id, stock_adjustment_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->book_stock_adjustment: #{e}"
end
```

#### Using the book_stock_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id)

```ruby
begin
  
  data, status_code, headers = api_instance.book_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->book_stock_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_stock_adjustment_item

> delete_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id)



deletes the single stock adjustment item

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->delete_stock_adjustment_item: #{e}"
end
```

#### Using the delete_stock_adjustment_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->delete_stock_adjustment_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_adjustment

> <StockAdjustment> get_stock_adjustment(korona_account_id, stock_adjustment_id)



returns a single stock adjustment

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_stock_adjustment(korona_account_id, stock_adjustment_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment: #{e}"
end
```

#### Using the get_stock_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockAdjustment>, Integer, Hash)> get_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockAdjustment>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StockAdjustment**](StockAdjustment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_adjustment_item

> <StockAdjustmentItem> get_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id)



returns a single stock adjustment item

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment_item: #{e}"
end
```

#### Using the get_stock_adjustment_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockAdjustmentItem>, Integer, Hash)> get_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockAdjustmentItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StockAdjustmentItem**](StockAdjustmentItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_adjustment_items

> <ResultListStockAdjustmentItem> get_stock_adjustment_items(korona_account_id, stock_adjustment_id, opts)



lists all stock adjustment items

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_stock_adjustment_items(korona_account_id, stock_adjustment_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment_items: #{e}"
end
```

#### Using the get_stock_adjustment_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockAdjustmentItem>, Integer, Hash)> get_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockAdjustmentItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustment_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListStockAdjustmentItem**](ResultListStockAdjustmentItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_adjustments

> <ResultListStockAdjustment> get_stock_adjustments(korona_account_id, opts)



lists all stock adjustments

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  warehouse: 'warehouse_example', # String | warehouse (= organizational unit having warehouse flag)
  booking_status: 'BOOKED', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example', # String | number of the related object
  receipt_number: 'receipt_number_example' # String | receipt number
}

begin
  
  result = api_instance.get_stock_adjustments(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustments: #{e}"
end
```

#### Using the get_stock_adjustments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockAdjustment>, Integer, Hash)> get_stock_adjustments_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_adjustments_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockAdjustment>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->get_stock_adjustments_with_http_info: #{e}"
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
| **min_finish_time** | **Time** | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_finish_time** | **Time** | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **warehouse** | **String** | warehouse (&#x3D; organizational unit having warehouse flag) | [optional] |
| **booking_status** | **String** | booking status (possible values: BOOKED, IN_PROGRESS) | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **receipt_number** | **String** | receipt number | [optional] |

### Return type

[**ResultListStockAdjustment**](ResultListStockAdjustment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stock_adjustment

> update_stock_adjustment(korona_account_id, stock_adjustment_id, stock_adjustment)



updates the single stock adjustment

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_adjustment = KoronaCloudClient::StockAdjustment.new # StockAdjustment | data to update

begin
  
  api_instance.update_stock_adjustment(korona_account_id, stock_adjustment_id, stock_adjustment)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment: #{e}"
end
```

#### Using the update_stock_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_adjustment_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_adjustment** | [**StockAdjustment**](StockAdjustment.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stock_adjustment_item

> update_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id, stock_adjustment_item)



updates the single stock adjustment item

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_adjustment_item = KoronaCloudClient::StockAdjustmentItem.new # StockAdjustmentItem | data to update

begin
  
  api_instance.update_stock_adjustment_item(korona_account_id, stock_adjustment_id, product_id, stock_adjustment_item)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment_item: #{e}"
end
```

#### Using the update_stock_adjustment_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id, stock_adjustment_item)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_adjustment_item_with_http_info(korona_account_id, stock_adjustment_id, product_id, stock_adjustment_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_adjustment_item** | [**StockAdjustmentItem**](StockAdjustmentItem.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stock_adjustment_items

> <Array<AddOrUpdateResult>> update_stock_adjustment_items(korona_account_id, stock_adjustment_id, stock_adjustment_item)



updates stock adjustment items

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

api_instance = KoronaCloudClient::StockAdjustmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_adjustment_id = 'stock_adjustment_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_adjustment_item = [KoronaCloudClient::StockAdjustmentItem.new] # Array<StockAdjustmentItem> | data to update

begin
  
  result = api_instance.update_stock_adjustment_items(korona_account_id, stock_adjustment_id, stock_adjustment_item)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment_items: #{e}"
end
```

#### Using the update_stock_adjustment_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment_item)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_adjustment_items_with_http_info(korona_account_id, stock_adjustment_id, stock_adjustment_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockAdjustmentsApi->update_stock_adjustment_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_adjustment_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_adjustment_item** | [**Array&lt;StockAdjustmentItem&gt;**](StockAdjustmentItem.md) | data to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

