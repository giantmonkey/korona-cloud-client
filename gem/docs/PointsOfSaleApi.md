# KoronaCloudClient::PointsOfSaleApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_point_of_sale_end_of_day_statements**](PointsOfSaleApi.md#add_point_of_sale_end_of_day_statements) | **POST** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/endOfDayStatements | adds a batch of point of sale-related end-of-day-statements
[**add_point_of_sale_receipts**](PointsOfSaleApi.md#add_point_of_sale_receipts) | **POST** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts | adds a batch of point of sale-related receipts
[**get_point_of_sale**](PointsOfSaleApi.md#get_point_of_sale) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId} | returns the single point of sale
[**get_point_of_sale_end_of_day_statements**](PointsOfSaleApi.md#get_point_of_sale_end_of_day_statements) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/endOfDayStatements | lists all point of sale-related end-of-day-statements
[**get_point_of_sale_receipt**](PointsOfSaleApi.md#get_point_of_sale_receipt) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts/{receiptId} | returns the single point of sale-related receipt
[**get_point_of_sale_receipts**](PointsOfSaleApi.md#get_point_of_sale_receipts) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts | lists all point of sale-related receipts
[**get_points_of_sale**](PointsOfSaleApi.md#get_points_of_sale) | **GET** /accounts/{koronaAccountId}/pointsOfSale | lists all points of sale
[**update_point_of_sale**](PointsOfSaleApi.md#update_point_of_sale) | **PATCH** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId} | updates a point of sale (works only for coupling (attribute &#39;couplingId&#39;) or updating device information (attribute &#39;deviceInformation&#39;))



## add_point_of_sale_end_of_day_statements

> Array&lt;AddOrUpdateResult&gt; add_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, coupling_id, opts)

adds a batch of point of sale-related end-of-day-statements

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
coupling_id = 'coupling_id_example' # String | the coupling-id of the device
opts = {
  body: [KoronaCloudClient::EndOfDayStatement.new] # Array<EndOfDayStatement> | the end-of-day-statements to add
}

begin
  #adds a batch of point of sale-related end-of-day-statements
  result = api_instance.add_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, coupling_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->add_point_of_sale_end_of_day_statements: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **coupling_id** | **String**| the coupling-id of the device | 
 **body** | [**Array&lt;EndOfDayStatement&gt;**](EndOfDayStatement.md)| the end-of-day-statements to add | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_point_of_sale_receipts

> Array&lt;AddOrUpdateResult&gt; add_point_of_sale_receipts(korona_account_id, point_of_sale_id, coupling_id, opts)

adds a batch of point of sale-related receipts

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
coupling_id = 'coupling_id_example' # String | the coupling-id of the device
opts = {
  body: [KoronaCloudClient::Receipt.new] # Array<Receipt> | the receipts to add
}

begin
  #adds a batch of point of sale-related receipts
  result = api_instance.add_point_of_sale_receipts(korona_account_id, point_of_sale_id, coupling_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->add_point_of_sale_receipts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **coupling_id** | **String**| the coupling-id of the device | 
 **body** | [**Array&lt;Receipt&gt;**](Receipt.md)| the receipts to add | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_point_of_sale

> Pos get_point_of_sale(korona_account_id, point_of_sale_id, opts)

returns the single point of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | the number of the point of sale
opts = {
  coupling_id: 'coupling_id_example' # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
}

begin
  #returns the single point of sale
  result = api_instance.get_point_of_sale(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->get_point_of_sale: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| the number of the point of sale | 
 **coupling_id** | **String**| the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] 

### Return type

[**Pos**](Pos.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_end_of_day_statements

> ResultListEndOfDayStatement get_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, opts)

lists all point of sale-related end-of-day-statements

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists all point of sale-related end-of-day-statements
  result = api_instance.get_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->get_point_of_sale_end_of_day_statements: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **coupling_id** | **String**| the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListEndOfDayStatement**](ResultListEndOfDayStatement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_receipt

> Receipt get_point_of_sale_receipt(korona_account_id, point_of_sale_id, receipt_id, opts)

returns the single point of sale-related receipt

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
receipt_id = 'receipt_id_example' # String | the id of the receipt
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  voided_items: true # Boolean | when set to true, voided items will be returned
}

begin
  #returns the single point of sale-related receipt
  result = api_instance.get_point_of_sale_receipt(korona_account_id, point_of_sale_id, receipt_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->get_point_of_sale_receipt: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **receipt_id** | **String**| the id of the receipt | 
 **coupling_id** | **String**| the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] 
 **voided_items** | **Boolean**| when set to true, voided items will be returned | [optional] 

### Return type

[**Receipt**](Receipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_receipts

> ResultListReceipt get_point_of_sale_receipts(korona_account_id, point_of_sale_id, opts)

lists all point of sale-related receipts

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  z_count: 56, # Integer | z-count of the receipt
  min_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  number: 'number_example', # String | number of the related object
  min_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  voided_items: true # Boolean | when set to true, voided items will be returned
}

begin
  #lists all point of sale-related receipts
  result = api_instance.get_point_of_sale_receipts(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->get_point_of_sale_receipts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **coupling_id** | **String**| the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **z_count** | **Integer**| z-count of the receipt | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **number** | **String**| number of the related object | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **voided_items** | **Boolean**| when set to true, voided items will be returned | [optional] 

### Return type

[**ResultListReceipt**](ResultListReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_points_of_sale

> ResultListPos get_points_of_sale(korona_account_id, opts)

lists all points of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example', # String | number of the related object
  external: true, # Boolean | indicates external/internal devices should be loaded (default: null (load all))
  coupled: true # Boolean | indicates coupled/not coupled devices should be loaded (default: null (load all))
}

begin
  #lists all points of sale
  result = api_instance.get_points_of_sale(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->get_points_of_sale: #{e}"
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
 **number** | **String**| number of the related object | [optional] 
 **external** | **Boolean**| indicates external/internal devices should be loaded (default: null (load all)) | [optional] 
 **coupled** | **Boolean**| indicates coupled/not coupled devices should be loaded (default: null (load all)) | [optional] 

### Return type

[**ResultListPos**](ResultListPos.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_point_of_sale

> update_point_of_sale(korona_account_id, point_of_sale_id, body, opts)

updates a point of sale (works only for coupling (attribute 'couplingId') or updating device information (attribute 'deviceInformation'))

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Pos.new # Pos | the properties to update of the point of sale ('couplingId' only)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device (required if already coupled)
  decouple: true # Boolean | executes uncoupling, if set to true, device will be uncoupled if point of sale is already coupled
}

begin
  #updates a point of sale (works only for coupling (attribute 'couplingId') or updating device information (attribute 'deviceInformation'))
  api_instance.update_point_of_sale(korona_account_id, point_of_sale_id, body, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PointsOfSaleApi->update_point_of_sale: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **point_of_sale_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Pos**](Pos.md)| the properties to update of the point of sale (&#39;couplingId&#39; only) | 
 **coupling_id** | **String**| the coupling-id of the device (required if already coupled) | [optional] 
 **decouple** | **Boolean**| executes uncoupling, if set to true, device will be uncoupled if point of sale is already coupled | [optional] 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

