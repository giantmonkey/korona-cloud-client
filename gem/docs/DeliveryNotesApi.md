# KoronaCloudClient::DeliveryNotesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_delivery_notes**](DeliveryNotesApi.md#add_delivery_notes) | **POST** /accounts/{koronaAccountId}/deliveryNotes | adds delivery notes
[**book_delivery_note**](DeliveryNotesApi.md#book_delivery_note) | **PATCH** /accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId}/book | book the single delivery note
[**finalize_delivery_note**](DeliveryNotesApi.md#finalize_delivery_note) | **PATCH** /accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId}/finalize | finalize the single delivery note
[**get_delivery_note**](DeliveryNotesApi.md#get_delivery_note) | **GET** /accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId} | returns a single delivery note
[**get_delivery_notes**](DeliveryNotesApi.md#get_delivery_notes) | **GET** /accounts/{koronaAccountId}/deliveryNotes | lists all delivery notes



## add_delivery_notes

> Array&lt;AddOrUpdateResult&gt; add_delivery_notes(korona_account_id, body)

adds delivery notes

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

api_instance = KoronaCloudClient::DeliveryNotesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DeliveryNote.new] # Array<DeliveryNote> | data to add

begin
  #adds delivery notes
  result = api_instance.add_delivery_notes(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling DeliveryNotesApi->add_delivery_notes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;DeliveryNote&gt;**](DeliveryNote.md)| data to add | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_delivery_note

> book_delivery_note(korona_account_id, delivery_note_id)

book the single delivery note

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

api_instance = KoronaCloudClient::DeliveryNotesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
delivery_note_id = 'delivery_note_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #book the single delivery note
  api_instance.book_delivery_note(korona_account_id, delivery_note_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling DeliveryNotesApi->book_delivery_note: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **delivery_note_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_delivery_note

> finalize_delivery_note(korona_account_id, delivery_note_id)

finalize the single delivery note

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

api_instance = KoronaCloudClient::DeliveryNotesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
delivery_note_id = 'delivery_note_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #finalize the single delivery note
  api_instance.finalize_delivery_note(korona_account_id, delivery_note_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling DeliveryNotesApi->finalize_delivery_note: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **delivery_note_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_delivery_note

> DeliveryNote get_delivery_note(korona_account_id, delivery_note_id)

returns a single delivery note

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

api_instance = KoronaCloudClient::DeliveryNotesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
delivery_note_id = 'delivery_note_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns a single delivery note
  result = api_instance.get_delivery_note(korona_account_id, delivery_note_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling DeliveryNotesApi->get_delivery_note: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **delivery_note_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_delivery_notes

> ResultListDeliveryNote get_delivery_notes(korona_account_id, opts)

lists all delivery notes

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

api_instance = KoronaCloudClient::DeliveryNotesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_delivery_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_delivery_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  point_of_sale: 'point_of_sale_example', # String | point of sale
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  customer: 'customer_example', # String | customer id to filter by
  number: 'number_example' # String | number of the related object
}

begin
  #lists all delivery notes
  result = api_instance.get_delivery_notes(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling DeliveryNotesApi->get_delivery_notes: #{e}"
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
 **min_delivery_time** | **DateTime**| min (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_delivery_time** | **DateTime**| max (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **min_booking_time** | **DateTime**| min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **max_booking_time** | **DateTime**| max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] 
 **point_of_sale** | **String**| point of sale | [optional] 
 **organizational_unit** | **String**| organizational unit | [optional] 
 **customer** | **String**| customer id to filter by | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListDeliveryNote**](ResultListDeliveryNote.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

