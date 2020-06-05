# KoronaCloudClient::OrganizationalUnitsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#add_organizational_unit_day_ratings) | **POST** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | adds a batch of new day ratings
[**delete_organizational_unit_day_rating**](OrganizationalUnitsApi.md#delete_organizational_unit_day_rating) | **DELETE** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | deletes the single day rating by its id or date
[**get_organizational_unit**](OrganizationalUnitsApi.md#get_organizational_unit) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId} | returns the single organizational unit
[**get_organizational_unit_day_rating**](OrganizationalUnitsApi.md#get_organizational_unit_day_rating) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | returns the single day rating by its id or date
[**get_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#get_organizational_unit_day_ratings) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | lists all organizational unit related day ratings
[**get_organizational_unit_inventory_lists**](OrganizationalUnitsApi.md#get_organizational_unit_inventory_lists) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/inventoryLists | lists the inventory lists belonging to the organizational unit (KORONA.retail required)
[**get_organizational_unit_product_stocks**](OrganizationalUnitsApi.md#get_organizational_unit_product_stocks) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/productStocks | lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
[**get_organizational_unit_stock_receipts**](OrganizationalUnitsApi.md#get_organizational_unit_stock_receipts) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/stockReceipts | lists the stock receipts belonging to the organizational unit (KORONA.retail required)
[**get_organizational_units**](OrganizationalUnitsApi.md#get_organizational_units) | **GET** /accounts/{koronaAccountId}/organizationalUnits | lists all organizational units
[**update_organizational_unit_day_rating**](OrganizationalUnitsApi.md#update_organizational_unit_day_rating) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | updates the day rating by its id or date
[**update_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#update_organizational_unit_day_ratings) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | updates a batch of day ratings



## add_organizational_unit_day_ratings

> Array&lt;AddOrUpdateResult&gt; add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)

adds a batch of new day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DayRating.new] # Array<DayRating> | an array of new day ratings

begin
  #adds a batch of new day ratings
  result = api_instance.add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->add_organizational_unit_day_ratings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Array&lt;DayRating&gt;**](DayRating.md)| an array of new day ratings | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organizational_unit_day_rating

> delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)

deletes the single day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating

begin
  #deletes the single day rating by its id or date
  api_instance.delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->delete_organizational_unit_day_rating: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit

> OrganizationalUnit get_organizational_unit(korona_account_id, organizational_unit_id)

returns the single organizational unit

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single organizational unit
  result = api_instance.get_organizational_unit(korona_account_id, organizational_unit_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**OrganizationalUnit**](OrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_day_rating

> DayRating get_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)

returns the single day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating

begin
  #returns the single day rating by its id or date
  result = api_instance.get_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_day_rating: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 

### Return type

[**DayRating**](DayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_day_ratings

> ResultListDayRating get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, opts)

lists all organizational unit related day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example' # String | attribute to sort by (multiple separated by comma; max. 5)
}

begin
  #lists all organizational unit related day ratings
  result = api_instance.get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_day_ratings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 

### Return type

[**ResultListDayRating**](ResultListDayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_inventory_lists

> ResultListInventoryList get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id, opts)

lists the inventory lists belonging to the organizational unit (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
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
  booking_status: 'booking_status_example' # String | booking status (possible values: BOOKED, IN_PROGRESS)
}

begin
  #lists the inventory lists belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_inventory_lists: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 

### Return type

[**ResultListInventoryList**](ResultListInventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_product_stocks

> ResultListProductStock get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id, opts)

lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
  result = api_instance.get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_product_stocks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListProductStock**](ResultListProductStock.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_stock_receipts

> ResultListStockReceipt get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id, opts)

lists the stock receipts belonging to the organizational unit (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
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
  source_organizational_unit: 'source_organizational_unit_example', # String | source organizational unit
  booking_status: 'booking_status_example', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  #lists the stock receipts belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_stock_receipts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **source_organizational_unit** | **String**| source organizational unit | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListStockReceipt**](ResultListStockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_units

> ResultListOrganizationalUnit get_organizational_units(korona_account_id, opts)

lists all organizational units

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all organizational units
  result = api_instance.get_organizational_units(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_units: #{e}"
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

### Return type

[**ResultListOrganizationalUnit**](ResultListOrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organizational_unit_day_rating

> update_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)

updates the day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating
body = KoronaCloudClient::DayRating.new # DayRating | the properties to update of the day rating

begin
  #updates the day rating by its id or date
  api_instance.update_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->update_organizational_unit_day_rating: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 
 **body** | [**DayRating**](DayRating.md)| the properties to update of the day rating | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organizational_unit_day_ratings

> Array&lt;AddOrUpdateResult&gt; update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)

updates a batch of day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DayRating.new] # Array<DayRating> | an array of new day ratings

begin
  #updates a batch of day ratings
  result = api_instance.update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->update_organizational_unit_day_ratings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **organizational_unit_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Array&lt;DayRating&gt;**](DayRating.md)| an array of new day ratings | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

