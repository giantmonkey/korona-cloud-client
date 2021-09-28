# KoronaCloudClient::StoreOrdersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_store_order_items**](StoreOrdersApi.md#add_store_order_items) | **POST** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items | adds store order items |
| [**add_store_orders**](StoreOrdersApi.md#add_store_orders) | **POST** /accounts/{koronaAccountId}/storeOrders | adds store orders |
| [**delete_store_order_item**](StoreOrdersApi.md#delete_store_order_item) | **DELETE** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items/{productId} | deletes the single store order item |
| [**get_store_order**](StoreOrdersApi.md#get_store_order) | **GET** /accounts/{koronaAccountId}/storeOrders/{storeOrderId} | returns a single store order |
| [**get_store_order_item**](StoreOrdersApi.md#get_store_order_item) | **GET** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items/{productId} | returns the single store order item |
| [**get_store_order_items**](StoreOrdersApi.md#get_store_order_items) | **GET** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items | lists all store order items |
| [**get_store_orders**](StoreOrdersApi.md#get_store_orders) | **GET** /accounts/{koronaAccountId}/storeOrders | lists all store orders |
| [**order_store_order**](StoreOrdersApi.md#order_store_order) | **PATCH** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/order | orders and finalizes the store order |
| [**update_store_order**](StoreOrdersApi.md#update_store_order) | **PATCH** /accounts/{koronaAccountId}/storeOrders/{storeOrderId} | updates the single store order |
| [**update_store_order_item**](StoreOrdersApi.md#update_store_order_item) | **PATCH** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items/{productId} | updates the single store order item |
| [**update_store_order_items**](StoreOrdersApi.md#update_store_order_items) | **PATCH** /accounts/{koronaAccountId}/storeOrders/{storeOrderId}/items | updates store order items |


## add_store_order_items

> <Array<AddOrUpdateResult>> add_store_order_items(korona_account_id, store_order_id, body)

adds store order items

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::StoreOrderItem.new] # Array<StoreOrderItem> | data to add

begin
  # adds store order items
  result = api_instance.add_store_order_items(korona_account_id, store_order_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->add_store_order_items: #{e}"
end
```

#### Using the add_store_order_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_store_order_items_with_http_info(korona_account_id, store_order_id, body)

```ruby
begin
  # adds store order items
  data, status_code, headers = api_instance.add_store_order_items_with_http_info(korona_account_id, store_order_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->add_store_order_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;StoreOrderItem&gt;**](StoreOrderItem.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_store_orders

> <Array<AddOrUpdateResult>> add_store_orders(korona_account_id, body)

adds store orders

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::StoreOrder.new] # Array<StoreOrder> | data to add

begin
  # adds store orders
  result = api_instance.add_store_orders(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->add_store_orders: #{e}"
end
```

#### Using the add_store_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_store_orders_with_http_info(korona_account_id, body)

```ruby
begin
  # adds store orders
  data, status_code, headers = api_instance.add_store_orders_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->add_store_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;StoreOrder&gt;**](StoreOrder.md) | data to add |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_store_order_item

> delete_store_order_item(korona_account_id, store_order_id, product_id)

deletes the single store order item

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single store order item
  api_instance.delete_store_order_item(korona_account_id, store_order_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->delete_store_order_item: #{e}"
end
```

#### Using the delete_store_order_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_store_order_item_with_http_info(korona_account_id, store_order_id, product_id)

```ruby
begin
  # deletes the single store order item
  data, status_code, headers = api_instance.delete_store_order_item_with_http_info(korona_account_id, store_order_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->delete_store_order_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_order

> <StoreOrder> get_store_order(korona_account_id, store_order_id)

returns a single store order

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns a single store order
  result = api_instance.get_store_order(korona_account_id, store_order_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order: #{e}"
end
```

#### Using the get_store_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoreOrder>, Integer, Hash)> get_store_order_with_http_info(korona_account_id, store_order_id)

```ruby
begin
  # returns a single store order
  data, status_code, headers = api_instance.get_store_order_with_http_info(korona_account_id, store_order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoreOrder>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StoreOrder**](StoreOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_order_item

> <StoreOrderItem> get_store_order_item(korona_account_id, store_order_id, product_id)

returns the single store order item

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single store order item
  result = api_instance.get_store_order_item(korona_account_id, store_order_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order_item: #{e}"
end
```

#### Using the get_store_order_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoreOrderItem>, Integer, Hash)> get_store_order_item_with_http_info(korona_account_id, store_order_id, product_id)

```ruby
begin
  # returns the single store order item
  data, status_code, headers = api_instance.get_store_order_item_with_http_info(korona_account_id, store_order_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoreOrderItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**StoreOrderItem**](StoreOrderItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_order_items

> <ResultListStoreOrderItem> get_store_order_items(korona_account_id, store_order_id, opts)

lists all store order items

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example' # String | attribute to sort by (multiple separated by comma; max. 5)
}

begin
  # lists all store order items
  result = api_instance.get_store_order_items(korona_account_id, store_order_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order_items: #{e}"
end
```

#### Using the get_store_order_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStoreOrderItem>, Integer, Hash)> get_store_order_items_with_http_info(korona_account_id, store_order_id, opts)

```ruby
begin
  # lists all store order items
  data, status_code, headers = api_instance.get_store_order_items_with_http_info(korona_account_id, store_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStoreOrderItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_order_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |

### Return type

[**ResultListStoreOrderItem**](ResultListStoreOrderItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_orders

> <ResultListStoreOrder> get_store_orders(korona_account_id, opts)

lists all store orders

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  target_organizational_unit: 'target_organizational_unit_example', # String | target organizational unit
  min_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_finish_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all store orders
  result = api_instance.get_store_orders(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_orders: #{e}"
end
```

#### Using the get_store_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListStoreOrder>, Integer, Hash)> get_store_orders_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all store orders
  data, status_code, headers = api_instance.get_store_orders_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListStoreOrder>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->get_store_orders_with_http_info: #{e}"
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
| **target_organizational_unit** | **String** | target organizational unit | [optional] |
| **min_finish_time** | **Time** | min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_finish_time** | **Time** | max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListStoreOrder**](ResultListStoreOrder.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_store_order

> order_store_order(korona_account_id, store_order_id, opts)

orders and finalizes the store order

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  order_action: 'ACCORDING_TO_SPECIFICATIONS', # String | type of order finalization. according to items speficiations (either each item must have a source, or those without are ignored and deleted) or regardless of items specifications (joint supplier or warehouse)
  warehouse: 'warehouse_example', # String | warehouse (= organizational unit having warehouse flag)
  supplier: 'supplier_example' # String | supplier
}

begin
  # orders and finalizes the store order
  api_instance.order_store_order(korona_account_id, store_order_id, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->order_store_order: #{e}"
end
```

#### Using the order_store_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> order_store_order_with_http_info(korona_account_id, store_order_id, opts)

```ruby
begin
  # orders and finalizes the store order
  data, status_code, headers = api_instance.order_store_order_with_http_info(korona_account_id, store_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->order_store_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **order_action** | **String** | type of order finalization. according to items speficiations (either each item must have a source, or those without are ignored and deleted) or regardless of items specifications (joint supplier or warehouse) | [optional] |
| **warehouse** | **String** | warehouse (&#x3D; organizational unit having warehouse flag) | [optional] |
| **supplier** | **String** | supplier | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_store_order

> update_store_order(korona_account_id, store_order_id, body)

updates the single store order

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::StoreOrder.new # StoreOrder | data to update

begin
  # updates the single store order
  api_instance.update_store_order(korona_account_id, store_order_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order: #{e}"
end
```

#### Using the update_store_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_store_order_with_http_info(korona_account_id, store_order_id, body)

```ruby
begin
  # updates the single store order
  data, status_code, headers = api_instance.update_store_order_with_http_info(korona_account_id, store_order_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**StoreOrder**](StoreOrder.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_store_order_item

> update_store_order_item(korona_account_id, store_order_id, product_id, body)

updates the single store order item

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::StoreOrderItem.new # StoreOrderItem | data to update

begin
  # updates the single store order item
  api_instance.update_store_order_item(korona_account_id, store_order_id, product_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order_item: #{e}"
end
```

#### Using the update_store_order_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_store_order_item_with_http_info(korona_account_id, store_order_id, product_id, body)

```ruby
begin
  # updates the single store order item
  data, status_code, headers = api_instance.update_store_order_item_with_http_info(korona_account_id, store_order_id, product_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**StoreOrderItem**](StoreOrderItem.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_store_order_items

> <Array<AddOrUpdateResult>> update_store_order_items(korona_account_id, store_order_id, body)

updates store order items

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

api_instance = KoronaCloudClient::StoreOrdersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
store_order_id = 'store_order_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::StoreOrderItem.new] # Array<StoreOrderItem> | data to update

begin
  # updates store order items
  result = api_instance.update_store_order_items(korona_account_id, store_order_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order_items: #{e}"
end
```

#### Using the update_store_order_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_store_order_items_with_http_info(korona_account_id, store_order_id, body)

```ruby
begin
  # updates store order items
  data, status_code, headers = api_instance.update_store_order_items_with_http_info(korona_account_id, store_order_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StoreOrdersApi->update_store_order_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **store_order_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;StoreOrderItem&gt;**](StoreOrderItem.md) | data to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

