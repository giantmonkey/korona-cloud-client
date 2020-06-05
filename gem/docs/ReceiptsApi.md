# KoronaCloudClient::ReceiptsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_receipt**](ReceiptsApi.md#get_receipt) | **GET** /accounts/{koronaAccountId}/receipts/{receiptId} | returns the single receipt
[**get_receipts**](ReceiptsApi.md#get_receipts) | **GET** /accounts/{koronaAccountId}/receipts | lists all receipts



## get_receipt

> Receipt get_receipt(korona_account_id, receipt_id)

returns the single receipt

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

api_instance = KoronaCloudClient::ReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
receipt_id = 'receipt_id_example' # String | id of the receipt

begin
  #returns the single receipt
  result = api_instance.get_receipt(korona_account_id, receipt_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipt: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **receipt_id** | **String**| id of the receipt | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_receipts

> ResultListReceipt get_receipts(korona_account_id, opts)

lists all receipts

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

api_instance = KoronaCloudClient::ReceiptsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  point_of_sale: 'point_of_sale_example', # String | point of sale
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  z_count: 56, # Integer | z-count of the receipt
  min_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  number: 'number_example', # String | number of the related object
  min_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
}

begin
  #lists all receipts
  result = api_instance.get_receipts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts: #{e}"
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
 **point_of_sale** | **String**| point of sale | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **z_count** | **Integer**| z-count of the receipt | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **number** | **String**| number of the related object | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 

### Return type

[**ResultListReceipt**](ResultListReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

