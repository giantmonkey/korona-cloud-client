# KoronaClient::OrganizationalUnitsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#add_organizational_unit_day_ratings) | **POST** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings | adds a batch of new day ratings
[**delete_organizational_unit_day_rating**](OrganizationalUnitsApi.md#delete_organizational_unit_day_rating) | **DELETE** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings/{dayRatingIdOrDate} | deletes the day rating by its id or date
[**get_organizational_unit**](OrganizationalUnitsApi.md#get_organizational_unit) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber} | lists the organizational unit
[**get_organizational_unit_day_rating**](OrganizationalUnitsApi.md#get_organizational_unit_day_rating) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings/{dayRatingIdOrDate} | lists the day rating by its id or date
[**get_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#get_organizational_unit_day_ratings) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings | lists all organizational unit related day ratings
[**get_organizational_unit_inventory_lists**](OrganizationalUnitsApi.md#get_organizational_unit_inventory_lists) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/inventoryLists | lists the inventory lists belonging to the organizational unit (KORONA.retail required)
[**get_organizational_unit_product_stocks**](OrganizationalUnitsApi.md#get_organizational_unit_product_stocks) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/productStocks | lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
[**get_organizational_unit_stock_receipts**](OrganizationalUnitsApi.md#get_organizational_unit_stock_receipts) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/stockReceipts | lists the stock receipts belonging to the organizational unit (KORONA.retail required)
[**get_organizational_units**](OrganizationalUnitsApi.md#get_organizational_units) | **GET** /accounts/{koronaAccountId}/organizationalUnits | lists all organizational units
[**update_organizational_unit_day_rating**](OrganizationalUnitsApi.md#update_organizational_unit_day_rating) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings/{dayRatingIdOrDate} | updates the day rating by its id or date
[**update_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#update_organizational_unit_day_ratings) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitIdOrNumber}/dayRatings | updated a batch of new day ratings


# **add_organizational_unit_day_ratings**
> Array&lt;AddOrUpdateResult&gt; add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, body)

adds a batch of new day ratings



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::DayRating.new] # Array<DayRating> | a array of new day ratings


begin
  #adds a batch of new day ratings
  result = api_instance.add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->add_organizational_unit_day_ratings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;DayRating&gt;**](DayRating.md)| a array of new day ratings | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_organizational_unit_day_rating**
> delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date)

deletes the day rating by its id or date



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

day_rating_id_or_date = "day_rating_id_or_date_example" # String | the id or date (YYYY-MM-DD) of the day rating


begin
  #deletes the day rating by its id or date
  api_instance.delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date)
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->delete_organizational_unit_day_rating: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit**
> OrganizationalUnit get_organizational_unit(korona_account_id, organizational_unit_id_or_number)

lists the organizational unit



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the organizational unit
  result = api_instance.get_organizational_unit(korona_account_id, organizational_unit_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**OrganizationalUnit**](OrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit_day_rating**
> DayRating get_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date)

lists the day rating by its id or date



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

day_rating_id_or_date = "day_rating_id_or_date_example" # String | the id or date (YYYY-MM-DD) of the day rating


begin
  #lists the day rating by its id or date
  result = api_instance.get_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_day_rating: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 

### Return type

[**DayRating**](DayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit_day_ratings**
> ResultListDayRating get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, opts)

lists all organizational unit related day ratings



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example" # String | attribute to sort by (multiple separated by comma; max. 5)
}

begin
  #lists all organizational unit related day ratings
  result = api_instance.get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_day_ratings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 

### Return type

[**ResultListDayRating**](ResultListDayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit_inventory_lists**
> ResultListInventoryList get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id_or_number, opts)

lists the inventory lists belonging to the organizational unit (KORONA.retail required)



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

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
  booking_status: "booking_status_example" # String | booking status (possible values: BOOKED, IN_PROGRESS)
}

begin
  #lists the inventory lists belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_inventory_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 

### Return type

[**ResultListInventoryList**](ResultListInventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit_product_stocks**
> ResultListProductStock get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id_or_number, opts)

lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
  result = api_instance.get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_product_stocks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListProductStock**](ResultListProductStock.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_unit_stock_receipts**
> ResultListStockReceipt get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id_or_number, opts)

lists the stock receipts belonging to the organizational unit (KORONA.retail required)



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

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
  source_organizational_unit: "source_organizational_unit_example", # String | source organizational unit
  booking_status: "booking_status_example" # String | booking status (possible values: BOOKED, IN_PROGRESS)
}

begin
  #lists the stock receipts belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit_stock_receipts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **min_create_time** | **DateTime**| min (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_create_time** | **DateTime**| max (inclusive) create time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; date, time and timezone) | [optional] 
 **source_organizational_unit** | **String**| source organizational unit | [optional] 
 **booking_status** | **String**| booking status (possible values: BOOKED, IN_PROGRESS) | [optional] 

### Return type

[**ResultListStockReceipt**](ResultListStockReceipt.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organizational_units**
> ResultListOrganizationalUnit get_organizational_units(korona_account_id, opts)

lists all organizational units



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all organizational units
  result = api_instance.get_organizational_units(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_units: #{e}"
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

### Return type

[**ResultListOrganizationalUnit**](ResultListOrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_organizational_unit_day_rating**
> update_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date, body)

updates the day rating by its id or date



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

day_rating_id_or_date = "day_rating_id_or_date_example" # String | the id or date (YYYY-MM-DD) of the day rating

body = KoronaClient::DayRating.new # DayRating | the properties to update of the day rating


begin
  #updates the day rating by its id or date
  api_instance.update_organizational_unit_day_rating(korona_account_id, organizational_unit_id_or_number, day_rating_id_or_date, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->update_organizational_unit_day_rating: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **day_rating_id_or_date** | **String**| the id or date (YYYY-MM-DD) of the day rating | 
 **body** | [**DayRating**](DayRating.md)| the properties to update of the day rating | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_organizational_unit_day_ratings**
> Array&lt;AddOrUpdateResult&gt; update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, body)

updated a batch of new day ratings



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

api_instance = KoronaClient::OrganizationalUnitsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

organizational_unit_id_or_number = "organizational_unit_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::DayRating.new] # Array<DayRating> | a array of new day ratings


begin
  #updated a batch of new day ratings
  result = api_instance.update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->update_organizational_unit_day_ratings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;DayRating&gt;**](DayRating.md)| a array of new day ratings | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



