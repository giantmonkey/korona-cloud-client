# KoronaClient::ReceiptsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_receipt**](ReceiptsApi.md#get_receipt) | **GET** /accounts/{koronaAccountId}/receipts/receiptId} | lists a single receipt
[**get_receipts**](ReceiptsApi.md#get_receipts) | **GET** /accounts/{koronaAccountId}/receipts | lists all receipts


# **get_receipt**
> Receipt get_receipt(korona_account_id, receipt_id)

lists a single receipt



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

api_instance = KoronaClient::ReceiptsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

receipt_id = "receipt_id_example" # String | the id of the receipt


begin
  #lists a single receipt
  result = api_instance.get_receipt(korona_account_id, receipt_id)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **receipt_id** | **String**| the id of the receipt | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_receipts**
> ResultListReceipt get_receipts(korona_account_id, opts)

lists all receipts



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

api_instance = KoronaClient::ReceiptsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  point_of_sale: "point_of_sale_example", # String | point of sale
  organizational_unit: "organizational_unit_example", # String | organizational unit
  z_count: 789, # Integer | z-count of the receipt
  min_create_time: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | min (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  max_create_time: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | max (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
}

begin
  #lists all receipts
  result = api_instance.get_receipts(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts: #{e}"
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
 **point_of_sale** | **String**| point of sale | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **z_count** | **Integer**| z-count of the receipt | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 

### Return type

[**ResultListReceipt**](ResultListReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



