# KoronaCloudClient::OrganizationalUnitsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#add_organizational_unit_day_ratings) | **POST** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | adds a batch of new day ratings |
| [**add_organizational_units**](OrganizationalUnitsApi.md#add_organizational_units) | **POST** /accounts/{koronaAccountId}/organizationalUnits | adds a batch of new organizational units |
| [**delete_organizational_unit**](OrganizationalUnitsApi.md#delete_organizational_unit) | **DELETE** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId} | deletes the single organizational unit by its id |
| [**delete_organizational_unit_day_rating**](OrganizationalUnitsApi.md#delete_organizational_unit_day_rating) | **DELETE** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | deletes the single day rating by its id or date |
| [**delete_organizational_units**](OrganizationalUnitsApi.md#delete_organizational_units) | **DELETE** /accounts/{koronaAccountId}/organizationalUnits | deletes a batch of organizational units |
| [**get_organizational_unit**](OrganizationalUnitsApi.md#get_organizational_unit) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId} | returns the single organizational unit |
| [**get_organizational_unit_day_rating**](OrganizationalUnitsApi.md#get_organizational_unit_day_rating) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | returns the single day rating by its id or date |
| [**get_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#get_organizational_unit_day_ratings) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | lists all organizational unit related day ratings |
| [**get_organizational_unit_inventory_lists**](OrganizationalUnitsApi.md#get_organizational_unit_inventory_lists) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/inventoryLists | lists the inventory lists belonging to the organizational unit (KORONA.retail required) |
| [**get_organizational_unit_product_stocks**](OrganizationalUnitsApi.md#get_organizational_unit_product_stocks) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/productStocks | lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required) |
| [**get_organizational_unit_stock_receipts**](OrganizationalUnitsApi.md#get_organizational_unit_stock_receipts) | **GET** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/stockReceipts | lists the stock receipts belonging to the organizational unit (KORONA.retail required) |
| [**get_organizational_units**](OrganizationalUnitsApi.md#get_organizational_units) | **GET** /accounts/{koronaAccountId}/organizationalUnits | lists all organizational units |
| [**update_organizational_unit**](OrganizationalUnitsApi.md#update_organizational_unit) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId} | updates the organizational unit  |
| [**update_organizational_unit_day_rating**](OrganizationalUnitsApi.md#update_organizational_unit_day_rating) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings/{dayRatingIdOrDate} | updates the day rating by its id or date |
| [**update_organizational_unit_day_ratings**](OrganizationalUnitsApi.md#update_organizational_unit_day_ratings) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits/{organizationalUnitId}/dayRatings | updates a batch of day ratings |
| [**update_organizational_units**](OrganizationalUnitsApi.md#update_organizational_units) | **PATCH** /accounts/{koronaAccountId}/organizationalUnits | updates a batch of organizational units |


## add_organizational_unit_day_ratings

> <Array<AddOrUpdateResult>> add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)

adds a batch of new day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DayRating.new] # Array<DayRating> | an array of new day ratings

begin
  # adds a batch of new day ratings
  result = api_instance.add_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->add_organizational_unit_day_ratings: #{e}"
end
```

#### Using the add_organizational_unit_day_ratings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, body)

```ruby
begin
  # adds a batch of new day ratings
  data, status_code, headers = api_instance.add_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->add_organizational_unit_day_ratings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;DayRating&gt;**](DayRating.md) | an array of new day ratings |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_organizational_units

> <Array<AddOrUpdateResult>> add_organizational_units(korona_account_id, body, opts)

adds a batch of new organizational units

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::OrganizationalUnit.new({name: 'name_example'})] # Array<OrganizationalUnit> | an array of new organizational units
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new organizational units
  result = api_instance.add_organizational_units(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->add_organizational_units: #{e}"
end
```

#### Using the add_organizational_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_organizational_units_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new organizational units
  data, status_code, headers = api_instance.add_organizational_units_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->add_organizational_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;OrganizationalUnit&gt;**](OrganizationalUnit.md) | an array of new organizational units |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organizational_unit

> delete_organizational_unit(korona_account_id, organizational_unit_id)

deletes the single organizational unit by its id

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single organizational unit by its id
  api_instance.delete_organizational_unit(korona_account_id, organizational_unit_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_unit: #{e}"
end
```

#### Using the delete_organizational_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_organizational_unit_with_http_info(korona_account_id, organizational_unit_id)

```ruby
begin
  # deletes the single organizational unit by its id
  data, status_code, headers = api_instance.delete_organizational_unit_with_http_info(korona_account_id, organizational_unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_organizational_unit_day_rating

> delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)

deletes the single day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating

begin
  # deletes the single day rating by its id or date
  api_instance.delete_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_unit_day_rating: #{e}"
end
```

#### Using the delete_organizational_unit_day_rating_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date)

```ruby
begin
  # deletes the single day rating by its id or date
  data, status_code, headers = api_instance.delete_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_unit_day_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **day_rating_id_or_date** | **String** | the id or date (YYYY-MM-DD) of the day rating |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_organizational_units

> <Array<AddOrUpdateResult>> delete_organizational_units(korona_account_id, body)

deletes a batch of organizational units

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::OrganizationalUnit.new({name: 'name_example'})] # Array<OrganizationalUnit> | array of existing organizational units (id or number required)

begin
  # deletes a batch of organizational units
  result = api_instance.delete_organizational_units(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_units: #{e}"
end
```

#### Using the delete_organizational_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_organizational_units_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of organizational units
  data, status_code, headers = api_instance.delete_organizational_units_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->delete_organizational_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;OrganizationalUnit&gt;**](OrganizationalUnit.md) | array of existing organizational units (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_organizational_unit

> <OrganizationalUnit> get_organizational_unit(korona_account_id, organizational_unit_id)

returns the single organizational unit

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single organizational unit
  result = api_instance.get_organizational_unit(korona_account_id, organizational_unit_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit: #{e}"
end
```

#### Using the get_organizational_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationalUnit>, Integer, Hash)> get_organizational_unit_with_http_info(korona_account_id, organizational_unit_id)

```ruby
begin
  # returns the single organizational unit
  data, status_code, headers = api_instance.get_organizational_unit_with_http_info(korona_account_id, organizational_unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationalUnit>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**OrganizationalUnit**](OrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_day_rating

> <DayRating> get_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)

returns the single day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating

begin
  # returns the single day rating by its id or date
  result = api_instance.get_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_day_rating: #{e}"
end
```

#### Using the get_organizational_unit_day_rating_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DayRating>, Integer, Hash)> get_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date)

```ruby
begin
  # returns the single day rating by its id or date
  data, status_code, headers = api_instance.get_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DayRating>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_day_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **day_rating_id_or_date** | **String** | the id or date (YYYY-MM-DD) of the day rating |  |

### Return type

[**DayRating**](DayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_day_ratings

> <ResultListDayRating> get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, opts)

lists all organizational unit related day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example' # String | attribute to sort by (multiple separated by comma; max. 5)
}

begin
  # lists all organizational unit related day ratings
  result = api_instance.get_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_day_ratings: #{e}"
end
```

#### Using the get_organizational_unit_day_ratings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDayRating>, Integer, Hash)> get_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, opts)

```ruby
begin
  # lists all organizational unit related day ratings
  data, status_code, headers = api_instance.get_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDayRating>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_day_ratings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |

### Return type

[**ResultListDayRating**](ResultListDayRating.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_inventory_lists

> <ResultListInventoryList> get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id, opts)

lists the inventory lists belonging to the organizational unit (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
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
  booking_status: 'BOOKED' # String | booking status (possible values: BOOKED, IN_PROGRESS)
}

begin
  # lists the inventory lists belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_inventory_lists(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_inventory_lists: #{e}"
end
```

#### Using the get_organizational_unit_inventory_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListInventoryList>, Integer, Hash)> get_organizational_unit_inventory_lists_with_http_info(korona_account_id, organizational_unit_id, opts)

```ruby
begin
  # lists the inventory lists belonging to the organizational unit (KORONA.retail required)
  data, status_code, headers = api_instance.get_organizational_unit_inventory_lists_with_http_info(korona_account_id, organizational_unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListInventoryList>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_inventory_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **booking_status** | **String** | booking status (possible values: BOOKED, IN_PROGRESS) | [optional] |

### Return type

[**ResultListInventoryList**](ResultListInventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_product_stocks

> <ResultListProductStock> get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id, opts)

lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  # lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
  result = api_instance.get_organizational_unit_product_stocks(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_product_stocks: #{e}"
end
```

#### Using the get_organizational_unit_product_stocks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListProductStock>, Integer, Hash)> get_organizational_unit_product_stocks_with_http_info(korona_account_id, organizational_unit_id, opts)

```ruby
begin
  # lists the product stocks of the organizational unit, in case it contains a warehouse (KORONA.retail required)
  data, status_code, headers = api_instance.get_organizational_unit_product_stocks_with_http_info(korona_account_id, organizational_unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListProductStock>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_product_stocks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListProductStock**](ResultListProductStock.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit_stock_receipts

> <ResultListStockReceipt> get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id, opts)

lists the stock receipts belonging to the organizational unit (KORONA.retail required)

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
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
  source_organizational_unit: 'source_organizational_unit_example', # String | source organizational unit
  booking_status: 'BOOKED', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  # lists the stock receipts belonging to the organizational unit (KORONA.retail required)
  result = api_instance.get_organizational_unit_stock_receipts(korona_account_id, organizational_unit_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_stock_receipts: #{e}"
end
```

#### Using the get_organizational_unit_stock_receipts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStockReceipt>, Integer, Hash)> get_organizational_unit_stock_receipts_with_http_info(korona_account_id, organizational_unit_id, opts)

```ruby
begin
  # lists the stock receipts belonging to the organizational unit (KORONA.retail required)
  data, status_code, headers = api_instance.get_organizational_unit_stock_receipts_with_http_info(korona_account_id, organizational_unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStockReceipt>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_unit_stock_receipts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
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


## get_organizational_units

> <ResultListOrganizationalUnit> get_organizational_units(korona_account_id, opts)

lists all organizational units

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all organizational units
  result = api_instance.get_organizational_units(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_units: #{e}"
end
```

#### Using the get_organizational_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListOrganizationalUnit>, Integer, Hash)> get_organizational_units_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all organizational units
  data, status_code, headers = api_instance.get_organizational_units_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListOrganizationalUnit>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->get_organizational_units_with_http_info: #{e}"
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

### Return type

[**ResultListOrganizationalUnit**](ResultListOrganizationalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organizational_unit

> update_organizational_unit(korona_account_id, organizational_unit_id, body)

updates the organizational unit 

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::OrganizationalUnit.new({name: 'name_example'}) # OrganizationalUnit | the properties to update of the organizational unit

begin
  # updates the organizational unit 
  api_instance.update_organizational_unit(korona_account_id, organizational_unit_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit: #{e}"
end
```

#### Using the update_organizational_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_organizational_unit_with_http_info(korona_account_id, organizational_unit_id, body)

```ruby
begin
  # updates the organizational unit 
  data, status_code, headers = api_instance.update_organizational_unit_with_http_info(korona_account_id, organizational_unit_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**OrganizationalUnit**](OrganizationalUnit.md) | the properties to update of the organizational unit |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organizational_unit_day_rating

> update_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)

updates the day rating by its id or date

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
day_rating_id_or_date = 'day_rating_id_or_date_example' # String | the id or date (YYYY-MM-DD) of the day rating
body = KoronaCloudClient::DayRating.new # DayRating | the properties to update of the day rating

begin
  # updates the day rating by its id or date
  api_instance.update_organizational_unit_day_rating(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit_day_rating: #{e}"
end
```

#### Using the update_organizational_unit_day_rating_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)

```ruby
begin
  # updates the day rating by its id or date
  data, status_code, headers = api_instance.update_organizational_unit_day_rating_with_http_info(korona_account_id, organizational_unit_id, day_rating_id_or_date, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit_day_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **day_rating_id_or_date** | **String** | the id or date (YYYY-MM-DD) of the day rating |  |
| **body** | [**DayRating**](DayRating.md) | the properties to update of the day rating |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organizational_unit_day_ratings

> <Array<AddOrUpdateResult>> update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)

updates a batch of day ratings

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
organizational_unit_id = 'organizational_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DayRating.new] # Array<DayRating> | an array of new day ratings

begin
  # updates a batch of day ratings
  result = api_instance.update_organizational_unit_day_ratings(korona_account_id, organizational_unit_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit_day_ratings: #{e}"
end
```

#### Using the update_organizational_unit_day_ratings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, body)

```ruby
begin
  # updates a batch of day ratings
  data, status_code, headers = api_instance.update_organizational_unit_day_ratings_with_http_info(korona_account_id, organizational_unit_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_unit_day_ratings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;DayRating&gt;**](DayRating.md) | an array of new day ratings |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_organizational_units

> <Array<AddOrUpdateResult>> update_organizational_units(korona_account_id, body)

updates a batch of organizational units

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::OrganizationalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::OrganizationalUnit.new({name: 'name_example'})] # Array<OrganizationalUnit> | an array of existing organizational units

begin
  # updates a batch of organizational units
  result = api_instance.update_organizational_units(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_units: #{e}"
end
```

#### Using the update_organizational_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_organizational_units_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of organizational units
  data, status_code, headers = api_instance.update_organizational_units_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrganizationalUnitsApi->update_organizational_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;OrganizationalUnit&gt;**](OrganizationalUnit.md) | an array of existing organizational units |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

