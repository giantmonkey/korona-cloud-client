# KoronaCloudClient::DispatchNotificationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_dispatch_notification_items**](DispatchNotificationsApi.md#add_dispatch_notification_items) | **POST** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items | adds dispatch notification items |
| [**add_dispatch_notifications**](DispatchNotificationsApi.md#add_dispatch_notifications) | **POST** /accounts/{koronaAccountId}/dispatchNotifications | adds dispatch notifications |
| [**book_dispatch_notification**](DispatchNotificationsApi.md#book_dispatch_notification) | **PATCH** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/book | books the single dispatch notification |
| [**delete_dispatch_notification**](DispatchNotificationsApi.md#delete_dispatch_notification) | **DELETE** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId} | deletes the single dispatch notification |
| [**delete_dispatch_notification_item**](DispatchNotificationsApi.md#delete_dispatch_notification_item) | **DELETE** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items/{dispatchNotificationItemId} | deletes the single dispatch notification item |
| [**get_dispatch_notification**](DispatchNotificationsApi.md#get_dispatch_notification) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId} | returns the single dispatch notification |
| [**get_dispatch_notification_item**](DispatchNotificationsApi.md#get_dispatch_notification_item) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items/{dispatchNotificationItemId} | returns the single dispatch notification item |
| [**get_dispatch_notification_items**](DispatchNotificationsApi.md#get_dispatch_notification_items) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items | lists all dispatch notification items |
| [**get_dispatch_notifications**](DispatchNotificationsApi.md#get_dispatch_notifications) | **GET** /accounts/{koronaAccountId}/dispatchNotifications | lists all dispatch notifications |
| [**update_dispatch_notification**](DispatchNotificationsApi.md#update_dispatch_notification) | **PATCH** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId} | updates the single dispatch notification |
| [**update_dispatch_notification_item**](DispatchNotificationsApi.md#update_dispatch_notification_item) | **PATCH** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items/{dispatchNotificationItemId} | updates the single dispatch notification item |
| [**update_dispatch_notification_items**](DispatchNotificationsApi.md#update_dispatch_notification_items) | **PATCH** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items | updates dispatch notification items |


## add_dispatch_notification_items

> <Array<AddOrUpdateResult>> add_dispatch_notification_items(korona_account_id, dispatch_notification_id, body, opts)

adds dispatch notification items

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DispatchNotificationItem.new] # Array<DispatchNotificationItem> | array of new dispatch notification items
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds dispatch notification items
  result = api_instance.add_dispatch_notification_items(korona_account_id, dispatch_notification_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->add_dispatch_notification_items: #{e}"
end
```

#### Using the add_dispatch_notification_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, body, opts)

```ruby
begin
  # adds dispatch notification items
  data, status_code, headers = api_instance.add_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->add_dispatch_notification_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;DispatchNotificationItem&gt;**](DispatchNotificationItem.md) | array of new dispatch notification items |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_dispatch_notifications

> <Array<AddOrUpdateResult>> add_dispatch_notifications(korona_account_id, body, opts)

adds dispatch notifications

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DispatchNotification.new] # Array<DispatchNotification> | array of new dispatch notifications
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds dispatch notifications
  result = api_instance.add_dispatch_notifications(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->add_dispatch_notifications: #{e}"
end
```

#### Using the add_dispatch_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_dispatch_notifications_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds dispatch notifications
  data, status_code, headers = api_instance.add_dispatch_notifications_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->add_dispatch_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DispatchNotification&gt;**](DispatchNotification.md) | array of new dispatch notifications |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_dispatch_notification

> book_dispatch_notification(korona_account_id, dispatch_notification_id)

books the single dispatch notification

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # books the single dispatch notification
  api_instance.book_dispatch_notification(korona_account_id, dispatch_notification_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->book_dispatch_notification: #{e}"
end
```

#### Using the book_dispatch_notification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)

```ruby
begin
  # books the single dispatch notification
  data, status_code, headers = api_instance.book_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->book_dispatch_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_dispatch_notification

> delete_dispatch_notification(korona_account_id, dispatch_notification_id)

deletes the single dispatch notification

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single dispatch notification
  api_instance.delete_dispatch_notification(korona_account_id, dispatch_notification_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->delete_dispatch_notification: #{e}"
end
```

#### Using the delete_dispatch_notification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)

```ruby
begin
  # deletes the single dispatch notification
  data, status_code, headers = api_instance.delete_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->delete_dispatch_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_dispatch_notification_item

> delete_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id)

deletes the single dispatch notification item

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
dispatch_notification_item_id = 'dispatch_notification_item_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single dispatch notification item
  api_instance.delete_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->delete_dispatch_notification_item: #{e}"
end
```

#### Using the delete_dispatch_notification_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id)

```ruby
begin
  # deletes the single dispatch notification item
  data, status_code, headers = api_instance.delete_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->delete_dispatch_notification_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **dispatch_notification_item_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dispatch_notification

> <DispatchNotification> get_dispatch_notification(korona_account_id, dispatch_notification_id)

returns the single dispatch notification

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single dispatch notification
  result = api_instance.get_dispatch_notification(korona_account_id, dispatch_notification_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification: #{e}"
end
```

#### Using the get_dispatch_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DispatchNotification>, Integer, Hash)> get_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)

```ruby
begin
  # returns the single dispatch notification
  data, status_code, headers = api_instance.get_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DispatchNotification>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DispatchNotification**](DispatchNotification.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dispatch_notification_item

> <DispatchNotificationItem> get_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, opts)

returns the single dispatch notification item

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
dispatch_notification_item_id = 'dispatch_notification_item_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  show_import_data: true # Boolean | when set to true, import data will included in response
}

begin
  # returns the single dispatch notification item
  result = api_instance.get_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_item: #{e}"
end
```

#### Using the get_dispatch_notification_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DispatchNotificationItem>, Integer, Hash)> get_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, opts)

```ruby
begin
  # returns the single dispatch notification item
  data, status_code, headers = api_instance.get_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DispatchNotificationItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **dispatch_notification_item_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **show_import_data** | **Boolean** | when set to true, import data will included in response | [optional] |

### Return type

[**DispatchNotificationItem**](DispatchNotificationItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dispatch_notification_items

> <ResultListDispatchNotificationItem> get_dispatch_notification_items(korona_account_id, dispatch_notification_id, opts)

lists all dispatch notification items

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  show_import_data: true # Boolean | when set to true, import data will included in response
}

begin
  # lists all dispatch notification items
  result = api_instance.get_dispatch_notification_items(korona_account_id, dispatch_notification_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_items: #{e}"
end
```

#### Using the get_dispatch_notification_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDispatchNotificationItem>, Integer, Hash)> get_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, opts)

```ruby
begin
  # lists all dispatch notification items
  data, status_code, headers = api_instance.get_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDispatchNotificationItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **show_import_data** | **Boolean** | when set to true, import data will included in response | [optional] |

### Return type

[**ResultListDispatchNotificationItem**](ResultListDispatchNotificationItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dispatch_notifications

> <ResultListDispatchNotification> get_dispatch_notifications(korona_account_id, opts)

lists all dispatch notifications

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
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
  organizational_unit: 'organizational_unit_example', # String | organizational unit
  source_organizational_unit: 'source_organizational_unit_example', # String | source organizational unit
  booking_status: 'BOOKED', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all dispatch notifications
  result = api_instance.get_dispatch_notifications(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notifications: #{e}"
end
```

#### Using the get_dispatch_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDispatchNotification>, Integer, Hash)> get_dispatch_notifications_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all dispatch notifications
  data, status_code, headers = api_instance.get_dispatch_notifications_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDispatchNotification>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notifications_with_http_info: #{e}"
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
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **organizational_unit** | **String** | organizational unit | [optional] |
| **source_organizational_unit** | **String** | source organizational unit | [optional] |
| **booking_status** | **String** | booking status (possible values: BOOKED, IN_PROGRESS) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListDispatchNotification**](ResultListDispatchNotification.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dispatch_notification

> update_dispatch_notification(korona_account_id, dispatch_notification_id, body)

updates the single dispatch notification

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::DispatchNotification.new # DispatchNotification | data to update

begin
  # updates the single dispatch notification
  api_instance.update_dispatch_notification(korona_account_id, dispatch_notification_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification: #{e}"
end
```

#### Using the update_dispatch_notification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id, body)

```ruby
begin
  # updates the single dispatch notification
  data, status_code, headers = api_instance.update_dispatch_notification_with_http_info(korona_account_id, dispatch_notification_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**DispatchNotification**](DispatchNotification.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_dispatch_notification_item

> update_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, body)

updates the single dispatch notification item

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
dispatch_notification_item_id = 'dispatch_notification_item_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::DispatchNotificationItem.new # DispatchNotificationItem | data to update

begin
  # updates the single dispatch notification item
  api_instance.update_dispatch_notification_item(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification_item: #{e}"
end
```

#### Using the update_dispatch_notification_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, body)

```ruby
begin
  # updates the single dispatch notification item
  data, status_code, headers = api_instance.update_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, dispatch_notification_item_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **dispatch_notification_item_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**DispatchNotificationItem**](DispatchNotificationItem.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_dispatch_notification_items

> <Array<AddOrUpdateResult>> update_dispatch_notification_items(korona_account_id, dispatch_notification_id, body)

updates dispatch notification items

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

api_instance = KoronaCloudClient::DispatchNotificationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
dispatch_notification_id = 'dispatch_notification_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::DispatchNotificationItem.new] # Array<DispatchNotificationItem> | data to update

begin
  # updates dispatch notification items
  result = api_instance.update_dispatch_notification_items(korona_account_id, dispatch_notification_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification_items: #{e}"
end
```

#### Using the update_dispatch_notification_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, body)

```ruby
begin
  # updates dispatch notification items
  data, status_code, headers = api_instance.update_dispatch_notification_items_with_http_info(korona_account_id, dispatch_notification_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->update_dispatch_notification_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **dispatch_notification_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;DispatchNotificationItem&gt;**](DispatchNotificationItem.md) | data to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

