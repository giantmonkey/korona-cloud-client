# KoronaClient::InventoriesKORONARetailApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_inventories**](InventoriesKORONARetailApi.md#add_inventories) | **POST** /accounts/{koronaAccountId}/inventories | adds a batch of new inventories
[**add_inventory_inventory_list_items**](InventoriesKORONARetailApi.md#add_inventory_inventory_list_items) | **POST** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items | adds inventory list items
[**delete_inventory**](InventoriesKORONARetailApi.md#delete_inventory) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber} | deletes the inventory; only possible if hasBookedReceipts&#x3D;false
[**delete_inventory_inventory_list_item**](InventoriesKORONARetailApi.md#delete_inventory_inventory_list_item) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items/{productIdOrNumber} | deletes the inventory list item
[**get_inventories**](InventoriesKORONARetailApi.md#get_inventories) | **GET** /accounts/{koronaAccountId}/inventories | lists all inventories
[**get_inventory**](InventoriesKORONARetailApi.md#get_inventory) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber} | lists the inventory
[**get_inventory_inventory_list**](InventoriesKORONARetailApi.md#get_inventory_inventory_list) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber} | lists the inventory list
[**get_inventory_inventory_list_item**](InventoriesKORONARetailApi.md#get_inventory_inventory_list_item) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items/{productIdOrNumber} | lists the inventory list item with the specified product
[**get_inventory_inventory_list_items**](InventoriesKORONARetailApi.md#get_inventory_inventory_list_items) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items | lists all inventory list items
[**get_inventory_inventory_lists**](InventoriesKORONARetailApi.md#get_inventory_inventory_lists) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists | lists all inventory lists
[**update_inventory**](InventoriesKORONARetailApi.md#update_inventory) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber} | changes the inventory
[**update_inventory_inventory_list**](InventoriesKORONARetailApi.md#update_inventory_inventory_list) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber} | updates the inventory list
[**update_inventory_inventory_list_item**](InventoriesKORONARetailApi.md#update_inventory_inventory_list_item) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items/{productIdOrNumber} | updates the inventory list item
[**update_inventory_inventory_list_items**](InventoriesKORONARetailApi.md#update_inventory_inventory_list_items) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryIdOrNumber}/inventoryLists/{inventoryListIdOrNumber}/items | updates inventory list items (property [product] required))


# **add_inventories**
> Array&lt;AddOrUpdateResult&gt; add_inventories(korona_account_id, body)

adds a batch of new inventories



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::Inventory.new] # Array<Inventory> | a array of new inventories


begin
  #adds a batch of new inventories
  result = api_instance.add_inventories(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->add_inventories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;Inventory&gt;**](Inventory.md)| a array of new inventories | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_inventory_inventory_list_items**
> Array&lt;AddOrUpdateResult&gt; add_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)

adds inventory list items



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::InventoryListItem.new] # Array<InventoryListItem> | data to update


begin
  #adds inventory list items
  result = api_instance.add_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->add_inventory_inventory_list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md)| data to update | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_inventory**
> delete_inventory(korona_account_id, inventory_id_or_number)

deletes the inventory; only possible if hasBookedReceipts=false



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the inventory; only possible if hasBookedReceipts=false
  api_instance.delete_inventory(korona_account_id, inventory_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->delete_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_inventory_inventory_list_item**
> delete_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number)

deletes the inventory list item



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the inventory list item
  api_instance.delete_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->delete_inventory_inventory_list_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventories**
> ResultListInventory get_inventories(korona_account_id, opts)

lists all inventories



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all inventories
  result = api_instance.get_inventories(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventories: #{e}"
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

[**ResultListInventory**](ResultListInventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventory**
> Inventory get_inventory(korona_account_id, inventory_id_or_number)

lists the inventory



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the inventory
  result = api_instance.get_inventory(korona_account_id, inventory_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Inventory**](Inventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventory_inventory_list**
> InventoryList get_inventory_inventory_list(korona_account_id, inventory_id_or_number, inventory_list_id_or_number)

lists the inventory list



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the inventory list
  result = api_instance.get_inventory_inventory_list(korona_account_id, inventory_id_or_number, inventory_list_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventory_inventory_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**InventoryList**](InventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventory_inventory_list_item**
> InventoryListItem get_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number)

lists the inventory list item with the specified product



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the inventory list item with the specified product
  result = api_instance.get_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventory_inventory_list_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**InventoryListItem**](InventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventory_inventory_list_items**
> ResultListInventoryListItem get_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, opts)

lists all inventory list items



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists all inventory list items
  result = api_instance.get_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventory_inventory_list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListInventoryListItem**](ResultListInventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inventory_inventory_lists**
> ResultListInventoryList get_inventory_inventory_lists(korona_account_id, inventory_id_or_number, opts)

lists all inventory lists



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

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
  #lists all inventory lists
  result = api_instance.get_inventory_inventory_lists(korona_account_id, inventory_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->get_inventory_inventory_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
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



# **update_inventory**
> update_inventory(korona_account_id, inventory_id_or_number, body)

changes the inventory



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::Inventory.new # Inventory | the properties to update of the inventory


begin
  #changes the inventory
  api_instance.update_inventory(korona_account_id, inventory_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->update_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Inventory**](Inventory.md)| the properties to update of the inventory | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inventory_inventory_list**
> update_inventory_inventory_list(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)

updates the inventory list



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::InventoryList.new # InventoryList | data to update


begin
  #updates the inventory list
  api_instance.update_inventory_inventory_list(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->update_inventory_inventory_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**InventoryList**](InventoryList.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inventory_inventory_list_item**
> update_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number, body)

updates the inventory list item



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::InventoryListItem.new # InventoryListItem | data to update


begin
  #updates the inventory list item
  api_instance.update_inventory_inventory_list_item(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, product_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->update_inventory_inventory_list_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**InventoryListItem**](InventoryListItem.md)| data to update | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_inventory_inventory_list_items**
> Array&lt;AddOrUpdateResult&gt; update_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)

updates inventory list items (property [product] required))



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

api_instance = KoronaClient::InventoriesKORONARetailApi.new

korona_account_id = "korona_account_id_example" # String | the account id

inventory_id_or_number = "inventory_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

inventory_list_id_or_number = "inventory_list_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = [KoronaClient::InventoryListItem.new] # Array<InventoryListItem> | a array of inventory list items to update


begin
  #updates inventory list items (property [product] required))
  result = api_instance.update_inventory_inventory_list_items(korona_account_id, inventory_id_or_number, inventory_list_id_or_number, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InventoriesKORONARetailApi->update_inventory_inventory_list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **inventory_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **inventory_list_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md)| a array of inventory list items to update | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



