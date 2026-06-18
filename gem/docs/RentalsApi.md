# KoronaCloudClient::RentalsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_rentals**](RentalsApi.md#add_rentals) | **POST** /accounts/{koronaAccountId}/rentals |  |
| [**book_rental**](RentalsApi.md#book_rental) | **PATCH** /accounts/{koronaAccountId}/rentals/{rentalId}/book |  |
| [**finalize_rental**](RentalsApi.md#finalize_rental) | **PATCH** /accounts/{koronaAccountId}/rentals/{rentalId}/finalize |  |
| [**get_rental**](RentalsApi.md#get_rental) | **GET** /accounts/{koronaAccountId}/rentals/{rentalId} |  |
| [**get_rental_item**](RentalsApi.md#get_rental_item) | **GET** /accounts/{koronaAccountId}/rentals/{rentalId}/items/{rentalItemId} |  |
| [**get_rentals**](RentalsApi.md#get_rentals) | **GET** /accounts/{koronaAccountId}/rentals |  |
| [**update_rental**](RentalsApi.md#update_rental) | **PATCH** /accounts/{koronaAccountId}/rentals/{rentalId} |  |
| [**update_rentals**](RentalsApi.md#update_rentals) | **PATCH** /accounts/{koronaAccountId}/rentals |  |


## add_rentals

> <Array<AddOrUpdateResult>> add_rentals(korona_account_id, rental)



adds rentals

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental = [KoronaCloudClient::Rental.new] # Array<Rental> | data to add

begin
  
  result = api_instance.add_rentals(korona_account_id, rental)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->add_rentals: #{e}"
end
```

#### Using the add_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_rentals_with_http_info(korona_account_id, rental)

```ruby
begin
  
  data, status_code, headers = api_instance.add_rentals_with_http_info(korona_account_id, rental)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->add_rentals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental** | [**Array&lt;Rental&gt;**](Rental.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_rental

> book_rental(korona_account_id, rental_id)



book the single rental

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental_id = 'rental_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.book_rental(korona_account_id, rental_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->book_rental: #{e}"
end
```

#### Using the book_rental_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_rental_with_http_info(korona_account_id, rental_id)

```ruby
begin
  
  data, status_code, headers = api_instance.book_rental_with_http_info(korona_account_id, rental_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->book_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_rental

> finalize_rental(korona_account_id, rental_id)



finalize the single rental

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental_id = 'rental_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.finalize_rental(korona_account_id, rental_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->finalize_rental: #{e}"
end
```

#### Using the finalize_rental_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> finalize_rental_with_http_info(korona_account_id, rental_id)

```ruby
begin
  
  data, status_code, headers = api_instance.finalize_rental_with_http_info(korona_account_id, rental_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->finalize_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental

> <Rental> get_rental(korona_account_id, rental_id)



returns a single rental

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental_id = 'rental_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_rental(korona_account_id, rental_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rental: #{e}"
end
```

#### Using the get_rental_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Rental>, Integer, Hash)> get_rental_with_http_info(korona_account_id, rental_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_rental_with_http_info(korona_account_id, rental_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Rental>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Rental**](Rental.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_item

> <RentalItem> get_rental_item(korona_account_id, rental_id, rental_item_id)



returns a single rental item

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental_id = 'rental_id_example' # String | id of the related object (important: id should match the uuid-format)
rental_item_id = 'rental_item_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_rental_item(korona_account_id, rental_id, rental_item_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rental_item: #{e}"
end
```

#### Using the get_rental_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalItem>, Integer, Hash)> get_rental_item_with_http_info(korona_account_id, rental_id, rental_item_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_rental_item_with_http_info(korona_account_id, rental_id, rental_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rental_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **rental_item_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**RentalItem**](RentalItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rentals

> <ResultListRental> get_rentals(korona_account_id, opts)



lists all rentals

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  point_of_sale: 'point_of_sale_example', # String | point of sale
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  customer: 'customer_example', # String | customer id to filter by
  number: 'number_example', # String | number of the related object
  receipt_status: 'OPEN' # String | receipt status (possible values: OPEN, BOOKED, FINISHED)
}

begin
  
  result = api_instance.get_rentals(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rentals: #{e}"
end
```

#### Using the get_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListRental>, Integer, Hash)> get_rentals_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_rentals_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListRental>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->get_rentals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **point_of_sale** | **String** | point of sale | [optional] |
| **organizational_unit** | **String** | organizational unit | [optional] |
| **customer** | **String** | customer id to filter by | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **receipt_status** | **String** | receipt status (possible values: OPEN, BOOKED, FINISHED) | [optional] |

### Return type

[**ResultListRental**](ResultListRental.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental

> update_rental(korona_account_id, rental_id, rental)



updates the single rental

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental_id = 'rental_id_example' # String | id of the related object (important: id should match the uuid-format)
rental = KoronaCloudClient::Rental.new # Rental | the properties to update of the rental

begin
  
  api_instance.update_rental(korona_account_id, rental_id, rental)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->update_rental: #{e}"
end
```

#### Using the update_rental_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_rental_with_http_info(korona_account_id, rental_id, rental)

```ruby
begin
  
  data, status_code, headers = api_instance.update_rental_with_http_info(korona_account_id, rental_id, rental)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->update_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **rental** | [**Rental**](Rental.md) | the properties to update of the rental |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rentals

> <Array<AddOrUpdateResult>> update_rentals(korona_account_id, rental)



updates a batch of rentals; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::RentalsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
rental = [KoronaCloudClient::Rental.new] # Array<Rental> | an array of existing rentals

begin
  
  result = api_instance.update_rentals(korona_account_id, rental)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->update_rentals: #{e}"
end
```

#### Using the update_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_rentals_with_http_info(korona_account_id, rental)

```ruby
begin
  
  data, status_code, headers = api_instance.update_rentals_with_http_info(korona_account_id, rental)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RentalsApi->update_rentals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **rental** | [**Array&lt;Rental&gt;**](Rental.md) | an array of existing rentals |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

