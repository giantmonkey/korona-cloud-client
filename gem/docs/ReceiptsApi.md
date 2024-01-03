# KoronaCloudClient::ReceiptsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_receipt**](ReceiptsApi.md#get_receipt) | **GET** /accounts/{koronaAccountId}/receipts/{receiptId} |  |
| [**get_receipt_item**](ReceiptsApi.md#get_receipt_item) | **GET** /accounts/{koronaAccountId}/receipts/{receiptId}/items/{receiptItemId} |  |
| [**get_receipts**](ReceiptsApi.md#get_receipts) | **GET** /accounts/{koronaAccountId}/receipts |  |


## get_receipt

> <Receipt> get_receipt(korona_account_id, receipt_id, opts)



returns the single receipt

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

api_instance = KoronaCloudClient::ReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_id = 'receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  voided_items: true # Boolean | when set to true, voided items will included in response
}

begin
  
  result = api_instance.get_receipt(korona_account_id, receipt_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt: #{e}"
end
```

#### Using the get_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receipt>, Integer, Hash)> get_receipt_with_http_info(korona_account_id, receipt_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_receipt_with_http_info(korona_account_id, receipt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Receipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voided_items** | **Boolean** | when set to true, voided items will included in response | [optional] |

### Return type

[**Receipt**](Receipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipt_item

> <ReceiptItem> get_receipt_item(korona_account_id, receipt_id, receipt_item_id)



returns the single receipt item

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

api_instance = KoronaCloudClient::ReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_id = 'receipt_id_example' # String | id of the related object (important: id should match the uuid-format)
receipt_item_id = 'receipt_item_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_receipt_item(korona_account_id, receipt_id, receipt_item_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_item: #{e}"
end
```

#### Using the get_receipt_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReceiptItem>, Integer, Hash)> get_receipt_item_with_http_info(korona_account_id, receipt_id, receipt_item_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_receipt_item_with_http_info(korona_account_id, receipt_id, receipt_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReceiptItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **receipt_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **receipt_item_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ReceiptItem**](ReceiptItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipts

> <ResultListReceipt> get_receipts(korona_account_id, opts)



lists all receipts

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

api_instance = KoronaCloudClient::ReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  point_of_sale: 'point_of_sale_example', # String | point of sale
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  z_count: 789, # Integer | z-count of the receipt
  min_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  number: 'number_example', # String | number of the related object
  min_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  voided_items: true, # Boolean | when set to true, voided items will included in response
  order_number: 'order_number_example' # String | order number
}

begin
  
  result = api_instance.get_receipts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipts: #{e}"
end
```

#### Using the get_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListReceipt>, Integer, Hash)> get_receipts_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_receipts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListReceipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipts_with_http_info: #{e}"
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
| **point_of_sale** | **String** | point of sale | [optional] |
| **organizational_unit** | **String** | organizational unit | [optional] |
| **z_count** | **Integer** | z-count of the receipt | [optional] |
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **voided_items** | **Boolean** | when set to true, voided items will included in response | [optional] |
| **order_number** | **String** | order number | [optional] |

### Return type

[**ResultListReceipt**](ResultListReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

