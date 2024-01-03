# KoronaCloudClient::OrderPortalSuppliersApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_order_portal_suppliers**](OrderPortalSuppliersApi.md#add_order_portal_suppliers) | **POST** /accounts/{koronaAccountId}/orderPortalSuppliers |  |
| [**delete_order_portal_supplier**](OrderPortalSuppliersApi.md#delete_order_portal_supplier) | **DELETE** /accounts/{koronaAccountId}/orderPortalSuppliers/{orderPortalSupplierId} |  |
| [**delete_order_portal_suppliers**](OrderPortalSuppliersApi.md#delete_order_portal_suppliers) | **DELETE** /accounts/{koronaAccountId}/orderPortalSuppliers |  |
| [**get_order_portal_supplier**](OrderPortalSuppliersApi.md#get_order_portal_supplier) | **GET** /accounts/{koronaAccountId}/orderPortalSuppliers/{orderPortalSupplierId} |  |
| [**get_order_portal_suppliers**](OrderPortalSuppliersApi.md#get_order_portal_suppliers) | **GET** /accounts/{koronaAccountId}/orderPortalSuppliers |  |
| [**update_order_portal_supplier**](OrderPortalSuppliersApi.md#update_order_portal_supplier) | **PATCH** /accounts/{koronaAccountId}/orderPortalSuppliers/{orderPortalSupplierId} |  |
| [**update_order_portal_suppliers**](OrderPortalSuppliersApi.md#update_order_portal_suppliers) | **PATCH** /accounts/{koronaAccountId}/orderPortalSuppliers |  |


## add_order_portal_suppliers

> <Array<AddOrUpdateResult>> add_order_portal_suppliers(korona_account_id, order_portal_supplier, opts)



adds a batch of new order_portal_suppliers

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier = [KoronaCloudClient::OrderPortalSupplier.new({name: 'name_example'})] # Array<OrderPortalSupplier> | array of new order portal suppliers
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_order_portal_suppliers(korona_account_id, order_portal_supplier, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->add_order_portal_suppliers: #{e}"
end
```

#### Using the add_order_portal_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->add_order_portal_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier** | [**Array&lt;OrderPortalSupplier&gt;**](OrderPortalSupplier.md) | array of new order portal suppliers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_order_portal_supplier

> delete_order_portal_supplier(korona_account_id, order_portal_supplier_id)



deletes the single order portal supplier

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier_id = 'order_portal_supplier_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_order_portal_supplier(korona_account_id, order_portal_supplier_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->delete_order_portal_supplier: #{e}"
end
```

#### Using the delete_order_portal_supplier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->delete_order_portal_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_order_portal_suppliers

> <Array<AddOrUpdateResult>> delete_order_portal_suppliers(korona_account_id, order_portal_supplier)



deletes a batch of order portal suppliers

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier = [KoronaCloudClient::OrderPortalSupplier.new({name: 'name_example'})] # Array<OrderPortalSupplier> | array of existing order portal suppliers (id or number required)

begin
  
  result = api_instance.delete_order_portal_suppliers(korona_account_id, order_portal_supplier)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->delete_order_portal_suppliers: #{e}"
end
```

#### Using the delete_order_portal_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->delete_order_portal_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier** | [**Array&lt;OrderPortalSupplier&gt;**](OrderPortalSupplier.md) | array of existing order portal suppliers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order_portal_supplier

> <OrderPortalSupplier> get_order_portal_supplier(korona_account_id, order_portal_supplier_id)



returns the single order portal supplier

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier_id = 'order_portal_supplier_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_order_portal_supplier(korona_account_id, order_portal_supplier_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->get_order_portal_supplier: #{e}"
end
```

#### Using the get_order_portal_supplier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderPortalSupplier>, Integer, Hash)> get_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderPortalSupplier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->get_order_portal_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**OrderPortalSupplier**](OrderPortalSupplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_portal_suppliers

> <ResultListOrderPortalSupplier> get_order_portal_suppliers(korona_account_id, opts)



lists all order portal suppliers

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
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
  
  result = api_instance.get_order_portal_suppliers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->get_order_portal_suppliers: #{e}"
end
```

#### Using the get_order_portal_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListOrderPortalSupplier>, Integer, Hash)> get_order_portal_suppliers_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_order_portal_suppliers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListOrderPortalSupplier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->get_order_portal_suppliers_with_http_info: #{e}"
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

[**ResultListOrderPortalSupplier**](ResultListOrderPortalSupplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order_portal_supplier

> update_order_portal_supplier(korona_account_id, order_portal_supplier_id, order_portal_supplier)



updates the single order portal supplier; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier_id = 'order_portal_supplier_id_example' # String | id of the related object (important: id should match the uuid-format)
order_portal_supplier = KoronaCloudClient::OrderPortalSupplier.new({name: 'name_example'}) # OrderPortalSupplier | the properties to update of the order portal supplier

begin
  
  api_instance.update_order_portal_supplier(korona_account_id, order_portal_supplier_id, order_portal_supplier)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->update_order_portal_supplier: #{e}"
end
```

#### Using the update_order_portal_supplier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id, order_portal_supplier)

```ruby
begin
  
  data, status_code, headers = api_instance.update_order_portal_supplier_with_http_info(korona_account_id, order_portal_supplier_id, order_portal_supplier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->update_order_portal_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **order_portal_supplier** | [**OrderPortalSupplier**](OrderPortalSupplier.md) | the properties to update of the order portal supplier |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_portal_suppliers

> <Array<AddOrUpdateResult>> update_order_portal_suppliers(korona_account_id, order_portal_supplier)



updates a batch of order portal suppliers; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
order_portal_supplier = [KoronaCloudClient::OrderPortalSupplier.new({name: 'name_example'})] # Array<OrderPortalSupplier> | an array of existing order portal suppliers

begin
  
  result = api_instance.update_order_portal_suppliers(korona_account_id, order_portal_supplier)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->update_order_portal_suppliers: #{e}"
end
```

#### Using the update_order_portal_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier)

```ruby
begin
  
  data, status_code, headers = api_instance.update_order_portal_suppliers_with_http_info(korona_account_id, order_portal_supplier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling OrderPortalSuppliersApi->update_order_portal_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **order_portal_supplier** | [**Array&lt;OrderPortalSupplier&gt;**](OrderPortalSupplier.md) | an array of existing order portal suppliers |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

