# KoronaCloudClient::PointsOfSaleApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_point_of_sale_end_of_day_statements**](PointsOfSaleApi.md#add_point_of_sale_end_of_day_statements) | **POST** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/endOfDayStatements |  |
| [**add_point_of_sale_receipts**](PointsOfSaleApi.md#add_point_of_sale_receipts) | **POST** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts |  |
| [**add_points_of_sale**](PointsOfSaleApi.md#add_points_of_sale) | **POST** /accounts/{koronaAccountId}/pointsOfSale |  |
| [**get_point_of_sale**](PointsOfSaleApi.md#get_point_of_sale) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId} |  |
| [**get_point_of_sale_balances**](PointsOfSaleApi.md#get_point_of_sale_balances) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/balances |  |
| [**get_point_of_sale_end_of_day_statements**](PointsOfSaleApi.md#get_point_of_sale_end_of_day_statements) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/endOfDayStatements |  |
| [**get_point_of_sale_receipt**](PointsOfSaleApi.md#get_point_of_sale_receipt) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts/{receiptId} |  |
| [**get_point_of_sale_receipts**](PointsOfSaleApi.md#get_point_of_sale_receipts) | **GET** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId}/receipts |  |
| [**get_points_of_sale**](PointsOfSaleApi.md#get_points_of_sale) | **GET** /accounts/{koronaAccountId}/pointsOfSale |  |
| [**update_point_of_sale**](PointsOfSaleApi.md#update_point_of_sale) | **PATCH** /accounts/{koronaAccountId}/pointsOfSale/{pointOfSaleId} |  |
| [**update_points_of_sale**](PointsOfSaleApi.md#update_points_of_sale) | **PATCH** /accounts/{koronaAccountId}/pointsOfSale |  |


## add_point_of_sale_end_of_day_statements

> <Array<AddOrUpdateResult>> add_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, coupling_id, opts)



adds a batch of point of sale-related end-of-day-statements

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
coupling_id = 'coupling_id_example' # String | the coupling-id of the device
opts = {
  end_of_day_statement: [KoronaCloudClient::EndOfDayStatement.new] # Array<EndOfDayStatement> | the end-of-day-statements to add
}

begin
  
  result = api_instance.add_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, coupling_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_point_of_sale_end_of_day_statements: #{e}"
end
```

#### Using the add_point_of_sale_end_of_day_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_point_of_sale_end_of_day_statements_with_http_info(korona_account_id, point_of_sale_id, coupling_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_point_of_sale_end_of_day_statements_with_http_info(korona_account_id, point_of_sale_id, coupling_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_point_of_sale_end_of_day_statements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **coupling_id** | **String** | the coupling-id of the device |  |
| **end_of_day_statement** | [**Array&lt;EndOfDayStatement&gt;**](EndOfDayStatement.md) | the end-of-day-statements to add | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_point_of_sale_receipts

> <Array<AddOrUpdateResult>> add_point_of_sale_receipts(korona_account_id, point_of_sale_id, coupling_id, opts)



adds a batch of point of sale-related receipts

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
coupling_id = 'coupling_id_example' # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
opts = {
  disable_receipt_number_prefix: true, # Boolean | prevents setting a prefix at the receipt number
  receipt: [KoronaCloudClient::Receipt.new] # Array<Receipt> | the receipts to add
}

begin
  
  result = api_instance.add_point_of_sale_receipts(korona_account_id, point_of_sale_id, coupling_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_point_of_sale_receipts: #{e}"
end
```

#### Using the add_point_of_sale_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_point_of_sale_receipts_with_http_info(korona_account_id, point_of_sale_id, coupling_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_point_of_sale_receipts_with_http_info(korona_account_id, point_of_sale_id, coupling_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_point_of_sale_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **coupling_id** | **String** | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). |  |
| **disable_receipt_number_prefix** | **Boolean** | prevents setting a prefix at the receipt number | [optional] |
| **receipt** | [**Array&lt;Receipt&gt;**](Receipt.md) | the receipts to add | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_points_of_sale

> <Array<AddOrUpdateResult>> add_points_of_sale(korona_account_id, pos, opts)



adds a batch of new points of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos = [KoronaCloudClient::Pos.new] # Array<Pos> | array of new points of sale
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_points_of_sale(korona_account_id, pos, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_points_of_sale: #{e}"
end
```

#### Using the add_points_of_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_points_of_sale_with_http_info(korona_account_id, pos, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_points_of_sale_with_http_info(korona_account_id, pos, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->add_points_of_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos** | [**Array&lt;Pos&gt;**](Pos.md) | array of new points of sale |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_point_of_sale

> <Pos> get_point_of_sale(korona_account_id, point_of_sale_id, opts)



returns the single point of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | the number of the point of sale
opts = {
  coupling_id: 'coupling_id_example' # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
}

begin
  
  result = api_instance.get_point_of_sale(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale: #{e}"
end
```

#### Using the get_point_of_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pos>, Integer, Hash)> get_point_of_sale_with_http_info(korona_account_id, point_of_sale_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_point_of_sale_with_http_info(korona_account_id, point_of_sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pos>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | the number of the point of sale |  |
| **coupling_id** | **String** | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] |

### Return type

[**Pos**](Pos.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_balances

> <ResultListPosBalance> get_point_of_sale_balances(korona_account_id, point_of_sale_id, opts)



lists all point of sale-related pos balances

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | point of sale
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  z_count: 789, # Integer | z-count of the pos balance
  cashier: 'cashier_example' # String | cashier id to filter by
}

begin
  
  result = api_instance.get_point_of_sale_balances(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_balances: #{e}"
end
```

#### Using the get_point_of_sale_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPosBalance>, Integer, Hash)> get_point_of_sale_balances_with_http_info(korona_account_id, point_of_sale_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_point_of_sale_balances_with_http_info(korona_account_id, point_of_sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPosBalance>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | point of sale |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **z_count** | **Integer** | z-count of the pos balance | [optional] |
| **cashier** | **String** | cashier id to filter by | [optional] |

### Return type

[**ResultListPosBalance**](ResultListPosBalance.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_end_of_day_statements

> <ResultListEndOfDayStatement> get_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, opts)



lists all point of sale-related end-of-day-statements

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  min_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  z_count: 789, # Integer | zCount
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_point_of_sale_end_of_day_statements(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_end_of_day_statements: #{e}"
end
```

#### Using the get_point_of_sale_end_of_day_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListEndOfDayStatement>, Integer, Hash)> get_point_of_sale_end_of_day_statements_with_http_info(korona_account_id, point_of_sale_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_point_of_sale_end_of_day_statements_with_http_info(korona_account_id, point_of_sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListEndOfDayStatement>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_end_of_day_statements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **coupling_id** | **String** | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **min_finish_time** | **Time** | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_finish_time** | **Time** | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **z_count** | **Integer** | zCount | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListEndOfDayStatement**](ResultListEndOfDayStatement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_receipt

> <Receipt> get_point_of_sale_receipt(korona_account_id, point_of_sale_id, receipt_id, opts)



returns the single point of sale-related receipt

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
receipt_id = 'receipt_id_example' # String | the id of the receipt
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  voided_items: true # Boolean | when set to true, voided items will included in response
}

begin
  
  result = api_instance.get_point_of_sale_receipt(korona_account_id, point_of_sale_id, receipt_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_receipt: #{e}"
end
```

#### Using the get_point_of_sale_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receipt>, Integer, Hash)> get_point_of_sale_receipt_with_http_info(korona_account_id, point_of_sale_id, receipt_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_point_of_sale_receipt_with_http_info(korona_account_id, point_of_sale_id, receipt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Receipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **receipt_id** | **String** | the id of the receipt |  |
| **coupling_id** | **String** | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] |
| **voided_items** | **Boolean** | when set to true, voided items will included in response | [optional] |

### Return type

[**Receipt**](Receipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_point_of_sale_receipts

> <ResultListReceipt> get_point_of_sale_receipts(korona_account_id, point_of_sale_id, opts)



lists all point of sale-related receipts

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
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
  
  result = api_instance.get_point_of_sale_receipts(korona_account_id, point_of_sale_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_receipts: #{e}"
end
```

#### Using the get_point_of_sale_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListReceipt>, Integer, Hash)> get_point_of_sale_receipts_with_http_info(korona_account_id, point_of_sale_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_point_of_sale_receipts_with_http_info(korona_account_id, point_of_sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListReceipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_point_of_sale_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **coupling_id** | **String** | the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external). | [optional] |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
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


## get_points_of_sale

> <ResultListPos> get_points_of_sale(korona_account_id, opts)



lists all points of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example', # String | number of the related object
  external: true, # Boolean | indicates external/internal devices should be loaded (default: null (load all))
  coupled: true # Boolean | indicates coupled/not coupled devices should be loaded (default: null (load all))
}

begin
  
  result = api_instance.get_points_of_sale(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_points_of_sale: #{e}"
end
```

#### Using the get_points_of_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPos>, Integer, Hash)> get_points_of_sale_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_points_of_sale_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPos>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->get_points_of_sale_with_http_info: #{e}"
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
| **number** | **String** | number of the related object | [optional] |
| **external** | **Boolean** | indicates external/internal devices should be loaded (default: null (load all)) | [optional] |
| **coupled** | **Boolean** | indicates coupled/not coupled devices should be loaded (default: null (load all)) | [optional] |

### Return type

[**ResultListPos**](ResultListPos.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_point_of_sale

> update_point_of_sale(korona_account_id, point_of_sale_id, pos, opts)



updates the point of sale

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
point_of_sale_id = 'point_of_sale_id_example' # String | id of the related object (important: id should match the uuid-format)
pos = KoronaCloudClient::Pos.new # Pos | the properties to update of the point of sale ('couplingId' only)
opts = {
  coupling_id: 'coupling_id_example', # String | the coupling-id of the device (required if already coupled)
  decouple: true # Boolean | executes uncoupling, if set to true, device will be uncoupled if point of sale is already coupled
}

begin
  
  api_instance.update_point_of_sale(korona_account_id, point_of_sale_id, pos, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->update_point_of_sale: #{e}"
end
```

#### Using the update_point_of_sale_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_point_of_sale_with_http_info(korona_account_id, point_of_sale_id, pos, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_point_of_sale_with_http_info(korona_account_id, point_of_sale_id, pos, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->update_point_of_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **point_of_sale_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **pos** | [**Pos**](Pos.md) | the properties to update of the point of sale (&#39;couplingId&#39; only) |  |
| **coupling_id** | **String** | the coupling-id of the device (required if already coupled) | [optional] |
| **decouple** | **Boolean** | executes uncoupling, if set to true, device will be uncoupled if point of sale is already coupled | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_points_of_sale

> <Array<AddOrUpdateResult>> update_points_of_sale(korona_account_id, pos)



updates a batch of points of sale; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PointsOfSaleApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos = [KoronaCloudClient::Pos.new] # Array<Pos> | an array of existing points of sale

begin
  
  result = api_instance.update_points_of_sale(korona_account_id, pos)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->update_points_of_sale: #{e}"
end
```

#### Using the update_points_of_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_points_of_sale_with_http_info(korona_account_id, pos)

```ruby
begin
  
  data, status_code, headers = api_instance.update_points_of_sale_with_http_info(korona_account_id, pos)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PointsOfSaleApi->update_points_of_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos** | [**Array&lt;Pos&gt;**](Pos.md) | an array of existing points of sale |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

