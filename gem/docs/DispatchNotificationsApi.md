# KoronaCloudClient::DispatchNotificationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dispatch_notification**](DispatchNotificationsApi.md#get_dispatch_notification) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId} | returns the single dispatch notification |
| [**get_dispatch_notification_item**](DispatchNotificationsApi.md#get_dispatch_notification_item) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items/{index} | returns the single dispatch notification item |
| [**get_dispatch_notification_items**](DispatchNotificationsApi.md#get_dispatch_notification_items) | **GET** /accounts/{koronaAccountId}/dispatchNotifications/{dispatchNotificationId}/items | lists all dispatch notification items |
| [**get_dispatch_notifications**](DispatchNotificationsApi.md#get_dispatch_notifications) | **GET** /accounts/{koronaAccountId}/dispatchNotifications | lists all dispatch notifications |


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

> <DispatchNotificationItem> get_dispatch_notification_item(korona_account_id, dispatch_notification_id, index)

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
index = 56 # Integer | id of the related object (important: id should match the uuid-format)

begin
  # returns the single dispatch notification item
  result = api_instance.get_dispatch_notification_item(korona_account_id, dispatch_notification_id, index)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DispatchNotificationsApi->get_dispatch_notification_item: #{e}"
end
```

#### Using the get_dispatch_notification_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DispatchNotificationItem>, Integer, Hash)> get_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, index)

```ruby
begin
  # returns the single dispatch notification item
  data, status_code, headers = api_instance.get_dispatch_notification_item_with_http_info(korona_account_id, dispatch_notification_id, index)
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
| **index** | **Integer** | id of the related object (important: id should match the uuid-format) |  |

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
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
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

