# KoronaClient::StockReceiptsKORONARetailApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_receipt_items**](StockReceiptsKORONARetailApi.md#add_stock_receipt_items) | **POST** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items | adds stock-receipt items
[**add_stock_receipts**](StockReceiptsKORONARetailApi.md#add_stock_receipts) | **POST** /accounts/{koronaAccountId}/stockReceipts | adds stock-receipts
[**delete_stock_receipt_item**](StockReceiptsKORONARetailApi.md#delete_stock_receipt_item) | **DELETE** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items/{productIdOrNumber} | deletes the stock-receipt item
[**get_stock_receipt**](StockReceiptsKORONARetailApi.md#get_stock_receipt) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber} | lists the stock-receipt
[**get_stock_receipt_item**](StockReceiptsKORONARetailApi.md#get_stock_receipt_item) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items/{productIdOrNumber} | lists the stock-receipt item
[**get_stock_receipt_items**](StockReceiptsKORONARetailApi.md#get_stock_receipt_items) | **GET** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items | lists all stock-receipt items
[**get_stock_receipts**](StockReceiptsKORONARetailApi.md#get_stock_receipts) | **GET** /accounts/{koronaAccountId}/stockReceipts | lists all stock-receipts
[**update_stock_receipt**](StockReceiptsKORONARetailApi.md#update_stock_receipt) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber} | updates the stock-receipt
[**update_stock_receipt_item**](StockReceiptsKORONARetailApi.md#update_stock_receipt_item) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items/{productIdOrNumber} | updates the stock-receipt item
[**update_stock_receipt_items**](StockReceiptsKORONARetailApi.md#update_stock_receipt_items) | **PATCH** /accounts/{koronaAccountId}/stockReceipts/{stockReceiptIdOrNumber}/items | updates stock-receipt items


# **add_stock_receipt_items**
> Array&lt;AddOrUpdateResult&gt; add_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, body)

adds stock-receipt items



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::StockReceiptItem.new] # Array<StockReceiptItem> | data to add


begin
  #adds stock-receipt items
  result = api_instance.add_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->add_stock_receipt_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;StockReceiptItem&gt;**](StockReceiptItem.md)| data to add | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_stock_receipts**
> Array&lt;AddOrUpdateResult&gt; add_stock_receipts(korona_account_id, body)

adds stock-receipts



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::StockReceipt.new] # Array<StockReceipt> | data to add


begin
  #adds stock-receipts
  result = api_instance.add_stock_receipts(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->add_stock_receipts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;StockReceipt&gt;**](StockReceipt.md)| data to add | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_stock_receipt_item**
> delete_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number)

deletes the stock-receipt item



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the stock-receipt item
  api_instance.delete_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->delete_stock_receipt_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stock_receipt**
> StockReceipt get_stock_receipt(korona_account_id, stock_receipt_id_or_number)

lists the stock-receipt



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the stock-receipt
  result = api_instance.get_stock_receipt(korona_account_id, stock_receipt_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->get_stock_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**StockReceipt**](StockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stock_receipt_item**
> StockReceiptItem get_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number)

lists the stock-receipt item



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the stock-receipt item
  result = api_instance.get_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->get_stock_receipt_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**StockReceiptItem**](StockReceiptItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stock_receipt_items**
> ResultListStockReceiptItem get_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, opts)

lists all stock-receipt items



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists all stock-receipt items
  result = api_instance.get_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->get_stock_receipt_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListStockReceiptItem**](ResultListStockReceiptItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stock_receipts**
> ResultListStockReceipt get_stock_receipts(korona_account_id, opts)

lists all stock-receipts



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
  min_create_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | min (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  max_create_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | max (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  min_booking_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | min (inclusive) booking time of the receipt (ISO 8601; date, time and timezone)
  max_booking_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | max (inclusive) booking time of the receipt (ISO 8601; date, time and timezone)
  organizational_unit: "organizational_unit_example", # String | organizational unit
  source_organizational_unit: "source_organizational_unit_example", # String | source organizational unit
  booking_status: "booking_status_example" # String | booking status (possible values: BOOKED, IN_PROGRESS)
}

begin
  #lists all stock-receipts
  result = api_instance.get_stock_receipts(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->get_stock_receipts: #{e}"
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
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **source_organizational_unit** | **String**| source organizational unit | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 

### Return type

[**ResultListStockReceipt**](ResultListStockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_stock_receipt**
> update_stock_receipt(korona_account_id, stock_receipt_id_or_number, body)

updates the stock-receipt



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::StockReceipt.new # StockReceipt | data to update


begin
  #updates the stock-receipt
  api_instance.update_stock_receipt(korona_account_id, stock_receipt_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->update_stock_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**StockReceipt**](StockReceipt.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_stock_receipt_item**
> update_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number, body)

updates the stock-receipt item



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::StockReceiptItem.new # StockReceiptItem | data to update


begin
  #updates the stock-receipt item
  api_instance.update_stock_receipt_item(korona_account_id, stock_receipt_id_or_number, product_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->update_stock_receipt_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**StockReceiptItem**](StockReceiptItem.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_stock_receipt_items**
> Array&lt;AddOrUpdateResult&gt; update_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, body)

updates stock-receipt items



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

api_instance = KoronaClient::StockReceiptsKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

stock_receipt_id_or_number = "stock_receipt_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::StockReceiptItem.new] # Array<StockReceiptItem> | data to update


begin
  #updates stock-receipt items
  result = api_instance.update_stock_receipt_items(korona_account_id, stock_receipt_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StockReceiptsKORONARetailApi->update_stock_receipt_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **stock_receipt_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;StockReceiptItem&gt;**](StockReceiptItem.md)| data to update | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



