# KoronaCloudClient::SuppliersApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_suppliers**](SuppliersApi.md#add_suppliers) | **POST** /accounts/{koronaAccountId}/suppliers |  |
| [**delete_suppliers**](SuppliersApi.md#delete_suppliers) | **DELETE** /accounts/{koronaAccountId}/suppliers |  |
| [**get_supplier**](SuppliersApi.md#get_supplier) | **GET** /accounts/{koronaAccountId}/suppliers/{supplierId} |  |
| [**get_suppliers**](SuppliersApi.md#get_suppliers) | **GET** /accounts/{koronaAccountId}/suppliers |  |
| [**update_suppliers**](SuppliersApi.md#update_suppliers) | **PATCH** /accounts/{koronaAccountId}/suppliers |  |


## add_suppliers

> <Array<AddOrUpdateResult>> add_suppliers(korona_account_id, supplier, opts)



adds a batch of new suppliers

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

api_instance = KoronaCloudClient::SuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
supplier = [KoronaCloudClient::Supplier.new] # Array<Supplier> | array of new suppliers
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_suppliers(korona_account_id, supplier, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->add_suppliers: #{e}"
end
```

#### Using the add_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_suppliers_with_http_info(korona_account_id, supplier, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_suppliers_with_http_info(korona_account_id, supplier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->add_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **supplier** | [**Array&lt;Supplier&gt;**](Supplier.md) | array of new suppliers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_suppliers

> <Array<AddOrUpdateResult>> delete_suppliers(korona_account_id, supplier)



deletes a batch of suppliers

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

api_instance = KoronaCloudClient::SuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
supplier = [KoronaCloudClient::Supplier.new] # Array<Supplier> | array of existing suppliers (id or number required)

begin
  
  result = api_instance.delete_suppliers(korona_account_id, supplier)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->delete_suppliers: #{e}"
end
```

#### Using the delete_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_suppliers_with_http_info(korona_account_id, supplier)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_suppliers_with_http_info(korona_account_id, supplier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->delete_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **supplier** | [**Array&lt;Supplier&gt;**](Supplier.md) | array of existing suppliers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_supplier

> <Supplier> get_supplier(korona_account_id, supplier_id)



returns the single supplier

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

api_instance = KoronaCloudClient::SuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
supplier_id = 'supplier_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_supplier(korona_account_id, supplier_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->get_supplier: #{e}"
end
```

#### Using the get_supplier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Supplier>, Integer, Hash)> get_supplier_with_http_info(korona_account_id, supplier_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_supplier_with_http_info(korona_account_id, supplier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Supplier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->get_supplier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **supplier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Supplier**](Supplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_suppliers

> <ResultListSupplier> get_suppliers(korona_account_id, opts)



lists all suppliers

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

api_instance = KoronaCloudClient::SuppliersApi.new
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
  
  result = api_instance.get_suppliers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->get_suppliers: #{e}"
end
```

#### Using the get_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListSupplier>, Integer, Hash)> get_suppliers_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_suppliers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListSupplier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->get_suppliers_with_http_info: #{e}"
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

[**ResultListSupplier**](ResultListSupplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_suppliers

> <Array<AddOrUpdateResult>> update_suppliers(korona_account_id, supplier)



updates a batch of suppliers

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

api_instance = KoronaCloudClient::SuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
supplier = [KoronaCloudClient::Supplier.new] # Array<Supplier> | array of existing suppliers (id or number required)

begin
  
  result = api_instance.update_suppliers(korona_account_id, supplier)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->update_suppliers: #{e}"
end
```

#### Using the update_suppliers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_suppliers_with_http_info(korona_account_id, supplier)

```ruby
begin
  
  data, status_code, headers = api_instance.update_suppliers_with_http_info(korona_account_id, supplier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SuppliersApi->update_suppliers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **supplier** | [**Array&lt;Supplier&gt;**](Supplier.md) | array of existing suppliers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

