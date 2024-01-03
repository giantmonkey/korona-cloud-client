# KoronaCloudClient::UsersApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_users**](UsersApi.md#add_users) | **POST** /accounts/{koronaAccountId}/users |  |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /accounts/{koronaAccountId}/users/{userId} |  |
| [**delete_users**](UsersApi.md#delete_users) | **DELETE** /accounts/{koronaAccountId}/users |  |
| [**get_user**](UsersApi.md#get_user) | **GET** /accounts/{koronaAccountId}/users/{userId} |  |
| [**get_users**](UsersApi.md#get_users) | **GET** /accounts/{koronaAccountId}/users |  |
| [**update_user**](UsersApi.md#update_user) | **PATCH** /accounts/{koronaAccountId}/users/{userId} |  |
| [**update_users**](UsersApi.md#update_users) | **PATCH** /accounts/{koronaAccountId}/users |  |


## add_users

> <Array<AddOrUpdateResult>> add_users(korona_account_id, user, opts)



adds a batch of new users

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user = [KoronaCloudClient::User.new] # Array<User> | an array of new users
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_users(korona_account_id, user, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->add_users: #{e}"
end
```

#### Using the add_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_users_with_http_info(korona_account_id, user, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_users_with_http_info(korona_account_id, user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->add_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user** | [**Array&lt;User&gt;**](User.md) | an array of new users |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> delete_user(korona_account_id, user_id)



deletes the single user

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_id = 'user_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_user(korona_account_id, user_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(korona_account_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_user_with_http_info(korona_account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_users

> <Array<AddOrUpdateResult>> delete_users(korona_account_id, user)



deletes a batch of users

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user = [KoronaCloudClient::User.new] # Array<User> | array of existing users

begin
  
  result = api_instance.delete_users(korona_account_id, user)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->delete_users: #{e}"
end
```

#### Using the delete_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_users_with_http_info(korona_account_id, user)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_users_with_http_info(korona_account_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->delete_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user** | [**Array&lt;User&gt;**](User.md) | array of existing users |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user

> <User> get_user(korona_account_id, user_id)



returns the single user

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_id = 'user_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_user(korona_account_id, user_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(korona_account_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_with_http_info(korona_account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**User**](User.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <ResultListUser> get_users(korona_account_id, opts)



lists all users

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

api_instance = KoronaCloudClient::UsersApi.new
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
  
  result = api_instance.get_users(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListUser>, Integer, Hash)> get_users_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_users_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListUser>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
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

[**ResultListUser**](ResultListUser.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> update_user(korona_account_id, user_id, user)



updates the single user

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user_id = 'user_id_example' # String | id of the related object (important: id should match the uuid-format)
user = KoronaCloudClient::User.new # User | the properties to update of the user

begin
  
  api_instance.update_user(korona_account_id, user_id, user)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_with_http_info(korona_account_id, user_id, user)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_with_http_info(korona_account_id, user_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **user** | [**User**](User.md) | the properties to update of the user |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_users

> <Array<AddOrUpdateResult>> update_users(korona_account_id, user)



updates a batch of users

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

api_instance = KoronaCloudClient::UsersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
user = [KoronaCloudClient::User.new] # Array<User> | array of existing users

begin
  
  result = api_instance.update_users(korona_account_id, user)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->update_users: #{e}"
end
```

#### Using the update_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_users_with_http_info(korona_account_id, user)

```ruby
begin
  
  data, status_code, headers = api_instance.update_users_with_http_info(korona_account_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling UsersApi->update_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **user** | [**Array&lt;User&gt;**](User.md) | array of existing users |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

