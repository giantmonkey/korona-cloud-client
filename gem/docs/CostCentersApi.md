# KoronaCloudClient::CostCentersApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_cost_centers**](CostCentersApi.md#add_cost_centers) | **POST** /accounts/{koronaAccountId}/costCenters |  |
| [**delete_cost_center**](CostCentersApi.md#delete_cost_center) | **DELETE** /accounts/{koronaAccountId}/costCenters/{costCenterId} |  |
| [**delete_cost_centers**](CostCentersApi.md#delete_cost_centers) | **DELETE** /accounts/{koronaAccountId}/costCenters |  |
| [**get_cost_center**](CostCentersApi.md#get_cost_center) | **GET** /accounts/{koronaAccountId}/costCenters/{costCenterId} |  |
| [**get_cost_centers**](CostCentersApi.md#get_cost_centers) | **GET** /accounts/{koronaAccountId}/costCenters |  |
| [**update_cost_center**](CostCentersApi.md#update_cost_center) | **PATCH** /accounts/{koronaAccountId}/costCenters/{costCenterId} |  |
| [**update_cost_centers**](CostCentersApi.md#update_cost_centers) | **PATCH** /accounts/{koronaAccountId}/costCenters |  |


## add_cost_centers

> <Array<AddOrUpdateResult>> add_cost_centers(korona_account_id, cost_center, opts)



adds a batch of new cost centers

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center = [KoronaCloudClient::CostCenter.new] # Array<CostCenter> | array of new cost centers
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_cost_centers(korona_account_id, cost_center, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->add_cost_centers: #{e}"
end
```

#### Using the add_cost_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_cost_centers_with_http_info(korona_account_id, cost_center, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_cost_centers_with_http_info(korona_account_id, cost_center, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->add_cost_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center** | [**Array&lt;CostCenter&gt;**](CostCenter.md) | array of new cost centers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cost_center

> delete_cost_center(korona_account_id, cost_center_id)



deletes the single cost center

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center_id = 'cost_center_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_cost_center(korona_account_id, cost_center_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->delete_cost_center: #{e}"
end
```

#### Using the delete_cost_center_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_center_with_http_info(korona_account_id, cost_center_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_cost_center_with_http_info(korona_account_id, cost_center_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->delete_cost_center_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cost_centers

> <Array<AddOrUpdateResult>> delete_cost_centers(korona_account_id, cost_center)



deletes a batch of cost centers

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center = [KoronaCloudClient::CostCenter.new] # Array<CostCenter> | array of existing cost centers (id or number required)

begin
  
  result = api_instance.delete_cost_centers(korona_account_id, cost_center)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->delete_cost_centers: #{e}"
end
```

#### Using the delete_cost_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_cost_centers_with_http_info(korona_account_id, cost_center)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_cost_centers_with_http_info(korona_account_id, cost_center)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->delete_cost_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center** | [**Array&lt;CostCenter&gt;**](CostCenter.md) | array of existing cost centers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cost_center

> <CostCenter> get_cost_center(korona_account_id, cost_center_id)



returns a single cost center

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center_id = 'cost_center_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_cost_center(korona_account_id, cost_center_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->get_cost_center: #{e}"
end
```

#### Using the get_cost_center_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostCenter>, Integer, Hash)> get_cost_center_with_http_info(korona_account_id, cost_center_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cost_center_with_http_info(korona_account_id, cost_center_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostCenter>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->get_cost_center_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**CostCenter**](CostCenter.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cost_centers

> <ResultListCostCenter> get_cost_centers(korona_account_id, opts)



lists all cost centers

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

api_instance = KoronaCloudClient::CostCentersApi.new
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
  
  result = api_instance.get_cost_centers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->get_cost_centers: #{e}"
end
```

#### Using the get_cost_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCostCenter>, Integer, Hash)> get_cost_centers_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cost_centers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCostCenter>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->get_cost_centers_with_http_info: #{e}"
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

[**ResultListCostCenter**](ResultListCostCenter.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cost_center

> update_cost_center(korona_account_id, cost_center_id, cost_center)



updates the single cost center; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center_id = 'cost_center_id_example' # String | id of the related object (important: id should match the uuid-format)
cost_center = KoronaCloudClient::CostCenter.new # CostCenter | the properties to update of the cost center

begin
  
  api_instance.update_cost_center(korona_account_id, cost_center_id, cost_center)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->update_cost_center: #{e}"
end
```

#### Using the update_cost_center_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_cost_center_with_http_info(korona_account_id, cost_center_id, cost_center)

```ruby
begin
  
  data, status_code, headers = api_instance.update_cost_center_with_http_info(korona_account_id, cost_center_id, cost_center)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->update_cost_center_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **cost_center** | [**CostCenter**](CostCenter.md) | the properties to update of the cost center |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cost_centers

> <Array<AddOrUpdateResult>> update_cost_centers(korona_account_id, cost_center)



updates a batch of cost centers; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::CostCentersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cost_center = [KoronaCloudClient::CostCenter.new] # Array<CostCenter> | an array of existing cost centers

begin
  
  result = api_instance.update_cost_centers(korona_account_id, cost_center)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->update_cost_centers: #{e}"
end
```

#### Using the update_cost_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_cost_centers_with_http_info(korona_account_id, cost_center)

```ruby
begin
  
  data, status_code, headers = api_instance.update_cost_centers_with_http_info(korona_account_id, cost_center)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CostCentersApi->update_cost_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cost_center** | [**Array&lt;CostCenter&gt;**](CostCenter.md) | an array of existing cost centers |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

