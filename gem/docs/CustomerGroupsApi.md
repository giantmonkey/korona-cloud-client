# KoronaCloudClient::CustomerGroupsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_customer_groups**](CustomerGroupsApi.md#add_customer_groups) | **POST** /accounts/{koronaAccountId}/customerGroups |  |
| [**delete_customer_group**](CustomerGroupsApi.md#delete_customer_group) | **DELETE** /accounts/{koronaAccountId}/customerGroups/{customerGroupId} |  |
| [**delete_customer_groups**](CustomerGroupsApi.md#delete_customer_groups) | **DELETE** /accounts/{koronaAccountId}/customerGroups |  |
| [**get_customer_group**](CustomerGroupsApi.md#get_customer_group) | **GET** /accounts/{koronaAccountId}/customerGroups/{customerGroupId} |  |
| [**get_customer_groups**](CustomerGroupsApi.md#get_customer_groups) | **GET** /accounts/{koronaAccountId}/customerGroups |  |
| [**update_customer_group**](CustomerGroupsApi.md#update_customer_group) | **PATCH** /accounts/{koronaAccountId}/customerGroups/{customerGroupId} |  |
| [**update_customer_groups**](CustomerGroupsApi.md#update_customer_groups) | **PATCH** /accounts/{koronaAccountId}/customerGroups |  |


## add_customer_groups

> <Array<AddOrUpdateResult>> add_customer_groups(korona_account_id, customer_group, opts)



adds a batch of new customer groups

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group = [KoronaCloudClient::CustomerGroup.new] # Array<CustomerGroup> | array of new customer groups
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_customer_groups(korona_account_id, customer_group, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->add_customer_groups: #{e}"
end
```

#### Using the add_customer_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_customer_groups_with_http_info(korona_account_id, customer_group, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_customer_groups_with_http_info(korona_account_id, customer_group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->add_customer_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group** | [**Array&lt;CustomerGroup&gt;**](CustomerGroup.md) | array of new customer groups |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer_group

> delete_customer_group(korona_account_id, customer_group_id)



deletes the single customer group

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group_id = 'customer_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_customer_group(korona_account_id, customer_group_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->delete_customer_group: #{e}"
end
```

#### Using the delete_customer_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_customer_group_with_http_info(korona_account_id, customer_group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customer_group_with_http_info(korona_account_id, customer_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->delete_customer_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customer_groups

> <Array<AddOrUpdateResult>> delete_customer_groups(korona_account_id, customer_group)



deletes a batch of customer groups

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group = [KoronaCloudClient::CustomerGroup.new] # Array<CustomerGroup> | array of existing customer groups (id or number required)

begin
  
  result = api_instance.delete_customer_groups(korona_account_id, customer_group)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->delete_customer_groups: #{e}"
end
```

#### Using the delete_customer_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_customer_groups_with_http_info(korona_account_id, customer_group)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_customer_groups_with_http_info(korona_account_id, customer_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->delete_customer_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group** | [**Array&lt;CustomerGroup&gt;**](CustomerGroup.md) | array of existing customer groups (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer_group

> <CustomerGroup> get_customer_group(korona_account_id, customer_group_id)



returns the single customer group

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group_id = 'customer_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_customer_group(korona_account_id, customer_group_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->get_customer_group: #{e}"
end
```

#### Using the get_customer_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerGroup>, Integer, Hash)> get_customer_group_with_http_info(korona_account_id, customer_group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customer_group_with_http_info(korona_account_id, customer_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerGroup>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->get_customer_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_groups

> <ResultListCustomerGroup> get_customer_groups(korona_account_id, opts)



lists all customer groups

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
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
  
  result = api_instance.get_customer_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->get_customer_groups: #{e}"
end
```

#### Using the get_customer_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCustomerGroup>, Integer, Hash)> get_customer_groups_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_customer_groups_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCustomerGroup>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->get_customer_groups_with_http_info: #{e}"
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

[**ResultListCustomerGroup**](ResultListCustomerGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer_group

> update_customer_group(korona_account_id, customer_group_id, customer_group)



updates the single customer group; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group_id = 'customer_group_id_example' # String | id of the related object (important: id should match the uuid-format)
customer_group = KoronaCloudClient::CustomerGroup.new # CustomerGroup | the properties to update of the customer group

begin
  
  api_instance.update_customer_group(korona_account_id, customer_group_id, customer_group)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->update_customer_group: #{e}"
end
```

#### Using the update_customer_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customer_group_with_http_info(korona_account_id, customer_group_id, customer_group)

```ruby
begin
  
  data, status_code, headers = api_instance.update_customer_group_with_http_info(korona_account_id, customer_group_id, customer_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->update_customer_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **customer_group** | [**CustomerGroup**](CustomerGroup.md) | the properties to update of the customer group |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customer_groups

> <Array<AddOrUpdateResult>> update_customer_groups(korona_account_id, customer_group)



updates a batch of customer groups; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group = [KoronaCloudClient::CustomerGroup.new] # Array<CustomerGroup> | an array of existing customer groups

begin
  
  result = api_instance.update_customer_groups(korona_account_id, customer_group)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->update_customer_groups: #{e}"
end
```

#### Using the update_customer_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_customer_groups_with_http_info(korona_account_id, customer_group)

```ruby
begin
  
  data, status_code, headers = api_instance.update_customer_groups_with_http_info(korona_account_id, customer_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CustomerGroupsApi->update_customer_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **customer_group** | [**Array&lt;CustomerGroup&gt;**](CustomerGroup.md) | an array of existing customer groups |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

