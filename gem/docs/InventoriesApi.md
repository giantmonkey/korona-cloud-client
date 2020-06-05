# KoronaCloudClient::InventoriesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_inventories**](InventoriesApi.md#add_inventories) | **POST** /accounts/{koronaAccountId}/inventories | adds a batch of new inventories
[**add_inventory_inventory_list_items**](InventoriesApi.md#add_inventory_inventory_list_items) | **POST** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | adds inventory list items
[**delete_inventory**](InventoriesApi.md#delete_inventory) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryId} | deletes the single inventory (only allowed if hasBookedReceipts&#x3D;false)
[**delete_inventory_inventory_list_item**](InventoriesApi.md#delete_inventory_inventory_list_item) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | deletes the single inventory list item
[**get_inventories**](InventoriesApi.md#get_inventories) | **GET** /accounts/{koronaAccountId}/inventories | lists all inventories
[**get_inventory**](InventoriesApi.md#get_inventory) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId} | returns the single inventory
[**get_inventory_inventory_list**](InventoriesApi.md#get_inventory_inventory_list) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId} | returns the single inventory list
[**get_inventory_inventory_list_item**](InventoriesApi.md#get_inventory_inventory_list_item) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | returns the single inventory list item
[**get_inventory_inventory_list_items**](InventoriesApi.md#get_inventory_inventory_list_items) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | lists all inventory list items
[**get_inventory_inventory_lists**](InventoriesApi.md#get_inventory_inventory_lists) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists | lists all inventory lists
[**update_inventory**](InventoriesApi.md#update_inventory) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId} | updates the single inventory
[**update_inventory_inventory_list**](InventoriesApi.md#update_inventory_inventory_list) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId} | updates the single inventory list
[**update_inventory_inventory_list_item**](InventoriesApi.md#update_inventory_inventory_list_item) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | updates the single inventory list item
[**update_inventory_inventory_list_items**](InventoriesApi.md#update_inventory_inventory_list_items) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | updates inventory list items (property [product] required))



## add_inventories

> Array&lt;AddOrUpdateResult&gt; add_inventories(korona_account_id, body)

adds a batch of new inventories

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Inventory.new] # Array<Inventory> | an array of new inventories

begin
  #adds a batch of new inventories
  result = api_instance.add_inventories(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->add_inventories: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Inventory&gt;**](Inventory.md)| an array of new inventories | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_inventory_inventory_list_items

> Array&lt;AddOrUpdateResult&gt; add_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)

adds inventory list items

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::InventoryListItem.new] # Array<InventoryListItem> | data to update

begin
  #adds inventory list items
  result = api_instance.add_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->add_inventory_inventory_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md)| data to update | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_inventory

> delete_inventory(korona_account_id, inventory_id)

deletes the single inventory (only allowed if hasBookedReceipts=false)

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single inventory (only allowed if hasBookedReceipts=false)
  api_instance.delete_inventory(korona_account_id, inventory_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->delete_inventory: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_inventory_inventory_list_item

> delete_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)

deletes the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single inventory list item
  api_instance.delete_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->delete_inventory_inventory_list_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventories

> ResultListInventory get_inventories(korona_account_id, opts)

lists all inventories

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

api_instance = KoronaCloudClient::InventoriesApi.new
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
  #lists all inventories
  result = api_instance.get_inventories(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventories: #{e}"
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

[**ResultListInventory**](ResultListInventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory

> Inventory get_inventory(korona_account_id, inventory_id)

returns the single inventory

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single inventory
  result = api_instance.get_inventory(korona_account_id, inventory_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventory: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Inventory**](Inventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_inventory_list

> InventoryList get_inventory_inventory_list(korona_account_id, inventory_id, inventory_list_id)

returns the single inventory list

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single inventory list
  result = api_instance.get_inventory_inventory_list(korona_account_id, inventory_id, inventory_list_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventory_inventory_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**InventoryList**](InventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_inventory_list_item

> InventoryListItem get_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)

returns the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single inventory list item
  result = api_instance.get_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventory_inventory_list_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**InventoryListItem**](InventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_inventory_list_items

> ResultListInventoryListItem get_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, opts)

lists all inventory list items

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists all inventory list items
  result = api_instance.get_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventory_inventory_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListInventoryListItem**](ResultListInventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_inventory_lists

> ResultListInventoryList get_inventory_inventory_lists(korona_account_id, inventory_id, opts)

lists all inventory lists

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
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
  booking_status: 'booking_status_example', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all inventory lists
  result = api_instance.get_inventory_inventory_lists(korona_account_id, inventory_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->get_inventory_inventory_lists: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
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
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListInventoryList**](ResultListInventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inventory

> update_inventory(korona_account_id, inventory_id, body)

updates the single inventory

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Inventory.new # Inventory | the properties to update of the inventory

begin
  #updates the single inventory
  api_instance.update_inventory(korona_account_id, inventory_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->update_inventory: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Inventory**](Inventory.md)| the properties to update of the inventory | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_inventory_list

> update_inventory_inventory_list(korona_account_id, inventory_id, inventory_list_id, body)

updates the single inventory list

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::InventoryList.new # InventoryList | data to update

begin
  #updates the single inventory list
  api_instance.update_inventory_inventory_list(korona_account_id, inventory_id, inventory_list_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->update_inventory_inventory_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**InventoryList**](InventoryList.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_inventory_list_item

> update_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id, body)

updates the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::InventoryListItem.new # InventoryListItem | data to update

begin
  #updates the single inventory list item
  api_instance.update_inventory_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->update_inventory_inventory_list_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**InventoryListItem**](InventoryListItem.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_inventory_list_items

> Array&lt;AddOrUpdateResult&gt; update_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)

updates inventory list items (property [product] required))

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::InventoryListItem.new] # Array<InventoryListItem> | an array of inventory list items to update

begin
  #updates inventory list items (property [product] required))
  result = api_instance.update_inventory_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InventoriesApi->update_inventory_inventory_list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **inventory_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **inventory_list_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md)| an array of inventory list items to update | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

