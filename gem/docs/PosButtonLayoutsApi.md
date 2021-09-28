# KoronaCloudClient::PosButtonLayoutsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_pos_button_layouts**](PosButtonLayoutsApi.md#add_pos_button_layouts) | **POST** /accounts/{koronaAccountId}/posButtonLayouts | adds a batch of new pos button layouts |
| [**delete_pos_button_layout**](PosButtonLayoutsApi.md#delete_pos_button_layout) | **DELETE** /accounts/{koronaAccountId}/posButtonLayouts/{posButtonLayoutId} | deletes the single pos botton layout |
| [**delete_pos_button_layouts**](PosButtonLayoutsApi.md#delete_pos_button_layouts) | **DELETE** /accounts/{koronaAccountId}/posButtonLayouts | deletes a batch of pos button layouts |
| [**get_pos_button_layout**](PosButtonLayoutsApi.md#get_pos_button_layout) | **GET** /accounts/{koronaAccountId}/posButtonLayouts/{posButtonLayoutId} | returns the single pos button layout |
| [**get_pos_button_layouts**](PosButtonLayoutsApi.md#get_pos_button_layouts) | **GET** /accounts/{koronaAccountId}/posButtonLayouts | lists all pos button layouts |
| [**update_pos_button_layout**](PosButtonLayoutsApi.md#update_pos_button_layout) | **PATCH** /accounts/{koronaAccountId}/posButtonLayouts/{posButtonLayoutId} | updates the single pos button layout |
| [**update_pos_button_layouts**](PosButtonLayoutsApi.md#update_pos_button_layouts) | **PATCH** /accounts/{koronaAccountId}/posButtonLayouts | updates a batch of pos button layouts |


## add_pos_button_layouts

> <Array<AddOrUpdateResult>> add_pos_button_layouts(korona_account_id, body, opts)

adds a batch of new pos button layouts

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosButtonLayout.new] # Array<PosButtonLayout> | array of new pos button layouts
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new pos button layouts
  result = api_instance.add_pos_button_layouts(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->add_pos_button_layouts: #{e}"
end
```

#### Using the add_pos_button_layouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_pos_button_layouts_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new pos button layouts
  data, status_code, headers = api_instance.add_pos_button_layouts_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->add_pos_button_layouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosButtonLayout&gt;**](PosButtonLayout.md) | array of new pos button layouts |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pos_button_layout

> delete_pos_button_layout(korona_account_id, pos_button_layout_id)

deletes the single pos botton layout

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_button_layout_id = 'pos_button_layout_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single pos botton layout
  api_instance.delete_pos_button_layout(korona_account_id, pos_button_layout_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->delete_pos_button_layout: #{e}"
end
```

#### Using the delete_pos_button_layout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id)

```ruby
begin
  # deletes the single pos botton layout
  data, status_code, headers = api_instance.delete_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->delete_pos_button_layout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_button_layout_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pos_button_layouts

> <Array<AddOrUpdateResult>> delete_pos_button_layouts(korona_account_id, body)

deletes a batch of pos button layouts

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosButtonLayout.new] # Array<PosButtonLayout> | array of existing pos button layouts (id or number required)

begin
  # deletes a batch of pos button layouts
  result = api_instance.delete_pos_button_layouts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->delete_pos_button_layouts: #{e}"
end
```

#### Using the delete_pos_button_layouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_pos_button_layouts_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of pos button layouts
  data, status_code, headers = api_instance.delete_pos_button_layouts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->delete_pos_button_layouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosButtonLayout&gt;**](PosButtonLayout.md) | array of existing pos button layouts (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_pos_button_layout

> <PosButtonLayout> get_pos_button_layout(korona_account_id, pos_button_layout_id)

returns the single pos button layout

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_button_layout_id = 'pos_button_layout_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single pos button layout
  result = api_instance.get_pos_button_layout(korona_account_id, pos_button_layout_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->get_pos_button_layout: #{e}"
end
```

#### Using the get_pos_button_layout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PosButtonLayout>, Integer, Hash)> get_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id)

```ruby
begin
  # returns the single pos button layout
  data, status_code, headers = api_instance.get_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PosButtonLayout>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->get_pos_button_layout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_button_layout_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PosButtonLayout**](PosButtonLayout.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pos_button_layouts

> <ResultListPosButtonLayout> get_pos_button_layouts(korona_account_id, opts)

lists all pos button layouts

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
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
  # lists all pos button layouts
  result = api_instance.get_pos_button_layouts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->get_pos_button_layouts: #{e}"
end
```

#### Using the get_pos_button_layouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPosButtonLayout>, Integer, Hash)> get_pos_button_layouts_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all pos button layouts
  data, status_code, headers = api_instance.get_pos_button_layouts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPosButtonLayout>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->get_pos_button_layouts_with_http_info: #{e}"
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

[**ResultListPosButtonLayout**](ResultListPosButtonLayout.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pos_button_layout

> update_pos_button_layout(korona_account_id, pos_button_layout_id, body)

updates the single pos button layout

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_button_layout_id = 'pos_button_layout_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::PosButtonLayout.new # PosButtonLayout | the properties to update of the pos button layout

begin
  # updates the single pos button layout
  api_instance.update_pos_button_layout(korona_account_id, pos_button_layout_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->update_pos_button_layout: #{e}"
end
```

#### Using the update_pos_button_layout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id, body)

```ruby
begin
  # updates the single pos button layout
  data, status_code, headers = api_instance.update_pos_button_layout_with_http_info(korona_account_id, pos_button_layout_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->update_pos_button_layout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_button_layout_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**PosButtonLayout**](PosButtonLayout.md) | the properties to update of the pos button layout |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pos_button_layouts

> <Array<AddOrUpdateResult>> update_pos_button_layouts(korona_account_id, body)

updates a batch of pos button layouts

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PosButtonLayoutsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosButtonLayout.new] # Array<PosButtonLayout> | an array of existing pos button layouts

begin
  # updates a batch of pos button layouts
  result = api_instance.update_pos_button_layouts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->update_pos_button_layouts: #{e}"
end
```

#### Using the update_pos_button_layouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_pos_button_layouts_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of pos button layouts
  data, status_code, headers = api_instance.update_pos_button_layouts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosButtonLayoutsApi->update_pos_button_layouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosButtonLayout&gt;**](PosButtonLayout.md) | an array of existing pos button layouts |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

