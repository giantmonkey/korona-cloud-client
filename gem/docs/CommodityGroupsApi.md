# KoronaCloudClient::CommodityGroupsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_commodity_groups**](CommodityGroupsApi.md#add_commodity_groups) | **POST** /accounts/{koronaAccountId}/commodityGroups |  |
| [**delete_commodity_group**](CommodityGroupsApi.md#delete_commodity_group) | **DELETE** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} |  |
| [**delete_commodity_groups**](CommodityGroupsApi.md#delete_commodity_groups) | **DELETE** /accounts/{koronaAccountId}/commodityGroups |  |
| [**get_commodity_group**](CommodityGroupsApi.md#get_commodity_group) | **GET** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} |  |
| [**get_commodity_groups**](CommodityGroupsApi.md#get_commodity_groups) | **GET** /accounts/{koronaAccountId}/commodityGroups |  |
| [**update_commodity_group**](CommodityGroupsApi.md#update_commodity_group) | **PATCH** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} |  |
| [**update_commodity_groups**](CommodityGroupsApi.md#update_commodity_groups) | **PATCH** /accounts/{koronaAccountId}/commodityGroups |  |


## add_commodity_groups

> <Array<AddOrUpdateResult>> add_commodity_groups(korona_account_id, commodity_group, opts)



adds a batch of new commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | an array of new commodity groups
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_commodity_groups(korona_account_id, commodity_group, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->add_commodity_groups: #{e}"
end
```

#### Using the add_commodity_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_commodity_groups_with_http_info(korona_account_id, commodity_group, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_commodity_groups_with_http_info(korona_account_id, commodity_group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->add_commodity_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md) | an array of new commodity groups |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_commodity_group

> delete_commodity_group(korona_account_id, commodity_group_id)



deletes the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_commodity_group(korona_account_id, commodity_group_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->delete_commodity_group: #{e}"
end
```

#### Using the delete_commodity_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commodity_group_with_http_info(korona_account_id, commodity_group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_commodity_group_with_http_info(korona_account_id, commodity_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->delete_commodity_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commodity_groups

> <Array<AddOrUpdateResult>> delete_commodity_groups(korona_account_id, commodity_group)



deletes a batch of commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | array of existing commodity groups (id or number required)

begin
  
  result = api_instance.delete_commodity_groups(korona_account_id, commodity_group)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->delete_commodity_groups: #{e}"
end
```

#### Using the delete_commodity_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_commodity_groups_with_http_info(korona_account_id, commodity_group)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_commodity_groups_with_http_info(korona_account_id, commodity_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->delete_commodity_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md) | array of existing commodity groups (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_commodity_group

> <CommodityGroup> get_commodity_group(korona_account_id, commodity_group_id)



returns the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_commodity_group(korona_account_id, commodity_group_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->get_commodity_group: #{e}"
end
```

#### Using the get_commodity_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommodityGroup>, Integer, Hash)> get_commodity_group_with_http_info(korona_account_id, commodity_group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_commodity_group_with_http_info(korona_account_id, commodity_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommodityGroup>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->get_commodity_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**CommodityGroup**](CommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commodity_groups

> <ResultListCommodityGroup> get_commodity_groups(korona_account_id, opts)



lists all commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
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
  
  result = api_instance.get_commodity_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->get_commodity_groups: #{e}"
end
```

#### Using the get_commodity_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCommodityGroup>, Integer, Hash)> get_commodity_groups_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_commodity_groups_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCommodityGroup>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->get_commodity_groups_with_http_info: #{e}"
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

[**ResultListCommodityGroup**](ResultListCommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_commodity_group

> update_commodity_group(korona_account_id, commodity_group_id, commodity_group)



updates the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)
commodity_group = KoronaCloudClient::CommodityGroup.new # CommodityGroup | the properties to update of the commodity group

begin
  
  api_instance.update_commodity_group(korona_account_id, commodity_group_id, commodity_group)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->update_commodity_group: #{e}"
end
```

#### Using the update_commodity_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_commodity_group_with_http_info(korona_account_id, commodity_group_id, commodity_group)

```ruby
begin
  
  data, status_code, headers = api_instance.update_commodity_group_with_http_info(korona_account_id, commodity_group_id, commodity_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->update_commodity_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **commodity_group** | [**CommodityGroup**](CommodityGroup.md) | the properties to update of the commodity group |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commodity_groups

> <Array<AddOrUpdateResult>> update_commodity_groups(korona_account_id, commodity_group)



updates a batch of commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | array of existing commodity groups (id or number required)

begin
  
  result = api_instance.update_commodity_groups(korona_account_id, commodity_group)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->update_commodity_groups: #{e}"
end
```

#### Using the update_commodity_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_commodity_groups_with_http_info(korona_account_id, commodity_group)

```ruby
begin
  
  data, status_code, headers = api_instance.update_commodity_groups_with_http_info(korona_account_id, commodity_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CommodityGroupsApi->update_commodity_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **commodity_group** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md) | array of existing commodity groups (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

