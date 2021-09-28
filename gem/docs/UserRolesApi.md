# KoronaCloudClient::UserRolesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_user_roles**](UserRolesApi.md#add_user_roles) | **POST** /accounts/{koronaAccountId}/userRoles | adds a batch of new user roles |
| [**delete_user_role**](UserRolesApi.md#delete_user_role) | **DELETE** /accounts/{koronaAccountId}/userRoles/{userRoleId} | deletes the single user role |
| [**delete_user_roles**](UserRolesApi.md#delete_user_roles) | **DELETE** /accounts/{koronaAccountId}/userRoles | deletes a batch of user roles |
| [**get_user_role**](UserRolesApi.md#get_user_role) | **GET** /accounts/{koronaAccountId}/userRoles/{userRoleId} | returns the single user role |
| [**get_user_roles**](UserRolesApi.md#get_user_roles) | **GET** /accounts/{koronaAccountId}/userRoles | lists all user roles |
| [**update_user_role**](UserRolesApi.md#update_user_role) | **PATCH** /accounts/{koronaAccountId}/userRoles/{userRoleId} | updates the single user role |
| [**update_user_roles**](UserRolesApi.md#update_user_roles) | **PATCH** /accounts/{koronaAccountId}/userRoles | updates a batch of user roles |


## add_user_roles

> <Array<AddOrUpdateResult>> add_user_roles(korona_account_id, body, opts)

adds a batch of new user roles

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::UserRole.new] # Array<UserRole> | an array of new user roles
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new user roles
  result = api_instance.add_user_roles(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->add_user_roles: #{e}"
end
```

#### Using the add_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_user_roles_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new user roles
  data, status_code, headers = api_instance.add_user_roles_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->add_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;UserRole&gt;**](UserRole.md) | an array of new user roles |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_role

> delete_user_role(korona_account_id, user_role_id)

deletes the single user role

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_role_id = 'user_role_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single user role
  api_instance.delete_user_role(korona_account_id, user_role_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->delete_user_role: #{e}"
end
```

#### Using the delete_user_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_role_with_http_info(korona_account_id, user_role_id)

```ruby
begin
  # deletes the single user role
  data, status_code, headers = api_instance.delete_user_role_with_http_info(korona_account_id, user_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->delete_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_roles

> <Array<AddOrUpdateResult>> delete_user_roles(korona_account_id, body)

deletes a batch of user roles

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::UserRole.new] # Array<UserRole> | array of existing user roles

begin
  # deletes a batch of user roles
  result = api_instance.delete_user_roles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->delete_user_roles: #{e}"
end
```

#### Using the delete_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_user_roles_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of user roles
  data, status_code, headers = api_instance.delete_user_roles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->delete_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;UserRole&gt;**](UserRole.md) | array of existing user roles |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_role

> <UserRole> get_user_role(korona_account_id, user_role_id)

returns the single user role

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_role_id = 'user_role_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single user role
  result = api_instance.get_user_role(korona_account_id, user_role_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->get_user_role: #{e}"
end
```

#### Using the get_user_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRole>, Integer, Hash)> get_user_role_with_http_info(korona_account_id, user_role_id)

```ruby
begin
  # returns the single user role
  data, status_code, headers = api_instance.get_user_role_with_http_info(korona_account_id, user_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRole>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->get_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**UserRole**](UserRole.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_roles

> <ResultListUserRole> get_user_roles(korona_account_id, opts)

lists all user roles

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  number: 'number_example' # String | number of the related object
}

begin
  # lists all user roles
  result = api_instance.get_user_roles(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->get_user_roles: #{e}"
end
```

#### Using the get_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListUserRole>, Integer, Hash)> get_user_roles_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all user roles
  data, status_code, headers = api_instance.get_user_roles_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListUserRole>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->get_user_roles_with_http_info: #{e}"
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
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListUserRole**](ResultListUserRole.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_role

> update_user_role(korona_account_id, user_role_id, body)

updates the single user role

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_role_id = 'user_role_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::UserRole.new # UserRole | the properties to update of the user role

begin
  # updates the single user role
  api_instance.update_user_role(korona_account_id, user_role_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->update_user_role: #{e}"
end
```

#### Using the update_user_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_role_with_http_info(korona_account_id, user_role_id, body)

```ruby
begin
  # updates the single user role
  data, status_code, headers = api_instance.update_user_role_with_http_info(korona_account_id, user_role_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->update_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_role_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**UserRole**](UserRole.md) | the properties to update of the user role |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_roles

> <Array<AddOrUpdateResult>> update_user_roles(korona_account_id, body)

updates a batch of user roles

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

api_instance = KoronaCloudClient::UserRolesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::UserRole.new] # Array<UserRole> | array of existing user roles

begin
  # updates a batch of user roles
  result = api_instance.update_user_roles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->update_user_roles: #{e}"
end
```

#### Using the update_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_user_roles_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of user roles
  data, status_code, headers = api_instance.update_user_roles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UserRolesApi->update_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;UserRole&gt;**](UserRole.md) | array of existing user roles |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

