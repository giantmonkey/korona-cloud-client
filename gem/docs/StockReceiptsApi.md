# KoronaCloudClient::StockReceiptsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_stock_receipt_items**](StockReceiptsApi.md#add_stock_receipt_items) | **POST** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items |  |
| [**add_stock_receipts**](StockReceiptsApi.md#add_stock_receipts) | **POST** /accounts/{koronaAccountId}/stockReceipts |  |
| [**book_stock_receipt**](StockReceiptsApi.md#book_stock_receipt) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/book |  |
| [**delete_stock_receipt_item**](StockReceiptsApi.md#delete_stock_receipt_item) | **DELETE** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items/{productId} |  |
| [**get_stock_receipt**](StockReceiptsApi.md#get_stock_receipt) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId} |  |
| [**get_stock_receipt_item**](StockReceiptsApi.md#get_stock_receipt_item) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items/{productId} |  |
| [**get_stock_receipt_items**](StockReceiptsApi.md#get_stock_receipt_items) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items |  |
| [**get_stock_receipts**](StockReceiptsApi.md#get_stock_receipts) | **GET** /accounts/{koronaAccountId}/stockReceipts |  |
| [**update_stock_receipt**](StockReceiptsApi.md#update_stock_receipt) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId} |  |
| [**update_stock_receipt_item**](StockReceiptsApi.md#update_stock_receipt_item) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items/{productId} |  |
| [**update_stock_receipt_items**](StockReceiptsApi.md#update_stock_receipt_items) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptId}/items |  |


## add_stock_receipt_items

> <Array<AddOrUpdateResult>> add_stock_receipt_items(korona_account_id, stock_receipt_id, stock_receipt_item)



adds stock-receipt items

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_receipt_item = [KoronaCloudClient::StockReceiptItem.new] # Array<StockReceiptItem> | data to add

begin
  
  result = api_instance.add_stock_receipt_items(korona_account_id, stock_receipt_id, stock_receipt_item)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->add_stock_receipt_items: #{e}"
end
```

#### Using the add_stock_receipt_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, stock_receipt_item)

```ruby
begin
  
  data, status_code, headers = api_instance.add_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, stock_receipt_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->add_stock_receipt_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_receipt_item** | [**Array&lt;StockReceiptItem&gt;**](StockReceiptItem.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_stock_receipts

> <Array<AddOrUpdateResult>> add_stock_receipts(korona_account_id, stock_receipt)



adds stock-receipts

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt = [KoronaCloudClient::StockReceipt.new] # Array<StockReceipt> | data to add

begin
  
  result = api_instance.add_stock_receipts(korona_account_id, stock_receipt)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->add_stock_receipts: #{e}"
end
```

#### Using the add_stock_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_stock_receipts_with_http_info(korona_account_id, stock_receipt)

```ruby
begin
  
  data, status_code, headers = api_instance.add_stock_receipts_with_http_info(korona_account_id, stock_receipt)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->add_stock_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt** | [**Array&lt;StockReceipt&gt;**](StockReceipt.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_stock_receipt

> book_stock_receipt(korona_account_id, stock_receipt_id)



book the single stock-receipt

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.book_stock_receipt(korona_account_id, stock_receipt_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->book_stock_receipt: #{e}"
end
```

#### Using the book_stock_receipt_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_stock_receipt_with_http_info(korona_account_id, stock_receipt_id)

```ruby
begin
  
  data, status_code, headers = api_instance.book_stock_receipt_with_http_info(korona_account_id, stock_receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->book_stock_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_stock_receipt_item

> delete_stock_receipt_item(korona_account_id, stock_receipt_id, product_id)



deletes the single stock-receipt item

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_stock_receipt_item(korona_account_id, stock_receipt_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->delete_stock_receipt_item: #{e}"
end
```

#### Using the delete_stock_receipt_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->delete_stock_receipt_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_receipt

> <StockReceipt> get_stock_receipt(korona_account_id, stock_receipt_id)



returns the single stock-receipt

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_stock_receipt(korona_account_id, stock_receipt_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt: #{e}"
end
```

#### Using the get_stock_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockReceipt>, Integer, Hash)> get_stock_receipt_with_http_info(korona_account_id, stock_receipt_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_receipt_with_http_info(korona_account_id, stock_receipt_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockReceipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StockReceipt**](StockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_receipt_item

> <StockReceiptItem> get_stock_receipt_item(korona_account_id, stock_receipt_id, product_id)



returns the single stock-receipt item

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_stock_receipt_item(korona_account_id, stock_receipt_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt_item: #{e}"
end
```

#### Using the get_stock_receipt_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StockReceiptItem>, Integer, Hash)> get_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StockReceiptItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StockReceiptItem**](StockReceiptItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_receipt_items

> <ResultListStockReceiptItem> get_stock_receipt_items(korona_account_id, stock_receipt_id, opts)



lists all stock-receipt items

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_stock_receipt_items(korona_account_id, stock_receipt_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt_items: #{e}"
end
```

#### Using the get_stock_receipt_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockReceiptItem>, Integer, Hash)> get_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockReceiptItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipt_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListStockReceiptItem**](ResultListStockReceiptItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_receipts

> <ResultListStockReceipt> get_stock_receipts(korona_account_id, opts)



lists all stock-receipts

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
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
  number: 'number_example' # String | number of the related object
}

begin
  
  result = api_instance.get_stock_receipts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipts: #{e}"
end
```

#### Using the get_stock_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockReceipt>, Integer, Hash)> get_stock_receipts_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_stock_receipts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockReceipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->get_stock_receipts_with_http_info: #{e}"
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

### Return type

[**ResultListStockReceipt**](ResultListStockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stock_receipt

> update_stock_receipt(korona_account_id, stock_receipt_id, stock_receipt)



updates the single stock-receipt

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_receipt = KoronaCloudClient::StockReceipt.new # StockReceipt | data to update

begin
  
  api_instance.update_stock_receipt(korona_account_id, stock_receipt_id, stock_receipt)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt: #{e}"
end
```

#### Using the update_stock_receipt_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_stock_receipt_with_http_info(korona_account_id, stock_receipt_id, stock_receipt)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_receipt_with_http_info(korona_account_id, stock_receipt_id, stock_receipt)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_receipt** | [**StockReceipt**](StockReceipt.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stock_receipt_item

> update_stock_receipt_item(korona_account_id, stock_receipt_id, product_id, stock_receipt_item)



updates the single stock-receipt item

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_receipt_item = KoronaCloudClient::StockReceiptItem.new # StockReceiptItem | data to update

begin
  
  api_instance.update_stock_receipt_item(korona_account_id, stock_receipt_id, product_id, stock_receipt_item)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt_item: #{e}"
end
```

#### Using the update_stock_receipt_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id, stock_receipt_item)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_receipt_item_with_http_info(korona_account_id, stock_receipt_id, product_id, stock_receipt_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_receipt_item** | [**StockReceiptItem**](StockReceiptItem.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stock_receipt_items

> <Array<AddOrUpdateResult>> update_stock_receipt_items(korona_account_id, stock_receipt_id, stock_receipt_item)



updates stock-receipt items

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

api_instance = KoronaCloudClient::StockReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
stock_receipt_id = 'stock_receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
stock_receipt_item = [KoronaCloudClient::StockReceiptItem.new] # Array<StockReceiptItem> | data to update

begin
  
  result = api_instance.update_stock_receipt_items(korona_account_id, stock_receipt_id, stock_receipt_item)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt_items: #{e}"
end
```

#### Using the update_stock_receipt_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, stock_receipt_item)

```ruby
begin
  
  data, status_code, headers = api_instance.update_stock_receipt_items_with_http_info(korona_account_id, stock_receipt_id, stock_receipt_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StockReceiptsApi->update_stock_receipt_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **stock_receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **stock_receipt_item** | [**Array&lt;StockReceiptItem&gt;**](StockReceiptItem.md) | data to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

