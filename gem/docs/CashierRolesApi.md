# KoronaCloudClient::CashierRolesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_cashier_roles**](CashierRolesApi.md#add_cashier_roles) | **POST** /accounts/{koronaAccountId}/cashierRoles | adds a batch of new cashier roles |
| [**delete_cashier_role**](CashierRolesApi.md#delete_cashier_role) | **DELETE** /accounts/{koronaAccountId}/cashierRoles/{cashierRoleId} | deletes the single cashier role |
| [**delete_cashier_roles**](CashierRolesApi.md#delete_cashier_roles) | **DELETE** /accounts/{koronaAccountId}/cashierRoles | deletes a batch of cashier roles |
| [**get_cashier_role**](CashierRolesApi.md#get_cashier_role) | **GET** /accounts/{koronaAccountId}/cashierRoles/{cashierRoleId} | returns the single cashier role |
| [**get_cashier_roles**](CashierRolesApi.md#get_cashier_roles) | **GET** /accounts/{koronaAccountId}/cashierRoles | lists all cashier roles |
| [**update_cashier_role**](CashierRolesApi.md#update_cashier_role) | **PATCH** /accounts/{koronaAccountId}/cashierRoles/{cashierRoleId} | updates the single cashier role |
| [**update_cashier_roles**](CashierRolesApi.md#update_cashier_roles) | **PATCH** /accounts/{koronaAccountId}/cashierRoles | updates a batch of cashier roles |


## add_cashier_roles

> <Array<AddOrUpdateResult>> add_cashier_roles(korona_account_id, body, opts)

adds a batch of new cashier roles

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CashierRole.new] # Array<CashierRole> | an array of new cashier roles
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new cashier roles
  result = api_instance.add_cashier_roles(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->add_cashier_roles: #{e}"
end
```

#### Using the add_cashier_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_cashier_roles_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new cashier roles
  data, status_code, headers = api_instance.add_cashier_roles_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->add_cashier_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;CashierRole&gt;**](CashierRole.md) | an array of new cashier roles |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cashier_role

> delete_cashier_role(korona_account_id, cashier_role_id)

deletes the single cashier role

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_role_id = 'cashier_role_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single cashier role
  api_instance.delete_cashier_role(korona_account_id, cashier_role_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->delete_cashier_role: #{e}"
end
```

#### Using the delete_cashier_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cashier_role_with_http_info(korona_account_id, cashier_role_id)

```ruby
begin
  # deletes the single cashier role
  data, status_code, headers = api_instance.delete_cashier_role_with_http_info(korona_account_id, cashier_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->delete_cashier_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cashier_roles

> <Array<AddOrUpdateResult>> delete_cashier_roles(korona_account_id, body)

deletes a batch of cashier roles

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CashierRole.new] # Array<CashierRole> | array of existing cashier roles (id or number required)

begin
  # deletes a batch of cashier roles
  result = api_instance.delete_cashier_roles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->delete_cashier_roles: #{e}"
end
```

#### Using the delete_cashier_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_cashier_roles_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of cashier roles
  data, status_code, headers = api_instance.delete_cashier_roles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->delete_cashier_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;CashierRole&gt;**](CashierRole.md) | array of existing cashier roles (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cashier_role

> <CashierRole> get_cashier_role(korona_account_id, cashier_role_id)

returns the single cashier role

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_role_id = 'cashier_role_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single cashier role
  result = api_instance.get_cashier_role(korona_account_id, cashier_role_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->get_cashier_role: #{e}"
end
```

#### Using the get_cashier_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashierRole>, Integer, Hash)> get_cashier_role_with_http_info(korona_account_id, cashier_role_id)

```ruby
begin
  # returns the single cashier role
  data, status_code, headers = api_instance.get_cashier_role_with_http_info(korona_account_id, cashier_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashierRole>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->get_cashier_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**CashierRole**](CashierRole.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cashier_roles

> <ResultListCashierRole> get_cashier_roles(korona_account_id, opts)

lists all cashier roles

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

api_instance = KoronaCloudClient::CashierRolesApi.new
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
  # lists all cashier roles
  result = api_instance.get_cashier_roles(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->get_cashier_roles: #{e}"
end
```

#### Using the get_cashier_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCashierRole>, Integer, Hash)> get_cashier_roles_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all cashier roles
  data, status_code, headers = api_instance.get_cashier_roles_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCashierRole>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->get_cashier_roles_with_http_info: #{e}"
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

[**ResultListCashierRole**](ResultListCashierRole.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cashier_role

> update_cashier_role(korona_account_id, cashier_role_id, body)

updates the single cashier role

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_role_id = 'cashier_role_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::CashierRole.new # CashierRole | the properties to update of the cashier role

begin
  # updates the single cashier role
  api_instance.update_cashier_role(korona_account_id, cashier_role_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->update_cashier_role: #{e}"
end
```

#### Using the update_cashier_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_cashier_role_with_http_info(korona_account_id, cashier_role_id, body)

```ruby
begin
  # updates the single cashier role
  data, status_code, headers = api_instance.update_cashier_role_with_http_info(korona_account_id, cashier_role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->update_cashier_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**CashierRole**](CashierRole.md) | the properties to update of the cashier role |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cashier_roles

> <Array<AddOrUpdateResult>> update_cashier_roles(korona_account_id, body)

updates a batch of cashier roles

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

api_instance = KoronaCloudClient::CashierRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CashierRole.new] # Array<CashierRole> | array of existing cashier roles (id or number required)

begin
  # updates a batch of cashier roles
  result = api_instance.update_cashier_roles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->update_cashier_roles: #{e}"
end
```

#### Using the update_cashier_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_cashier_roles_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of cashier roles
  data, status_code, headers = api_instance.update_cashier_roles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierRolesApi->update_cashier_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;CashierRole&gt;**](CashierRole.md) | array of existing cashier roles (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

