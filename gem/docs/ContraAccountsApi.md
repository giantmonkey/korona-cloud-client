# KoronaCloudClient::ContraAccountsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contra_accounts**](ContraAccountsApi.md#add_contra_accounts) | **POST** /accounts/{koronaAccountId}/contraAccounts | adds a batch of new contra accounts |
| [**delete_contra_account**](ContraAccountsApi.md#delete_contra_account) | **DELETE** /accounts/{koronaAccountId}/contraAccounts/{contraAccountId} | deletes the single contra account |
| [**delete_contra_accounts**](ContraAccountsApi.md#delete_contra_accounts) | **DELETE** /accounts/{koronaAccountId}/contraAccounts | deletes a batch of contra accounts |
| [**get_contra_account**](ContraAccountsApi.md#get_contra_account) | **GET** /accounts/{koronaAccountId}/contraAccounts/{contraAccountId} | returns a single contra account |
| [**get_contra_accounts**](ContraAccountsApi.md#get_contra_accounts) | **GET** /accounts/{koronaAccountId}/contraAccounts | lists all contra accounts |
| [**update_contra_account**](ContraAccountsApi.md#update_contra_account) | **PATCH** /accounts/{koronaAccountId}/contraAccounts/{contraAccountId} | updates the single contra account |
| [**update_contra_accounts**](ContraAccountsApi.md#update_contra_accounts) | **PATCH** /accounts/{koronaAccountId}/contraAccounts | updates a batch of contra accounts |


## add_contra_accounts

> <Array<AddOrUpdateResult>> add_contra_accounts(korona_account_id, body, opts)

adds a batch of new contra accounts

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ContraAccount.new] # Array<ContraAccount> | array of new contra accounts
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new contra accounts
  result = api_instance.add_contra_accounts(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->add_contra_accounts: #{e}"
end
```

#### Using the add_contra_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_contra_accounts_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new contra accounts
  data, status_code, headers = api_instance.add_contra_accounts_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->add_contra_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ContraAccount&gt;**](ContraAccount.md) | array of new contra accounts |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contra_account

> delete_contra_account(korona_account_id, contra_account_id)

deletes the single contra account

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
contra_account_id = 'contra_account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single contra account
  api_instance.delete_contra_account(korona_account_id, contra_account_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->delete_contra_account: #{e}"
end
```

#### Using the delete_contra_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contra_account_with_http_info(korona_account_id, contra_account_id)

```ruby
begin
  # deletes the single contra account
  data, status_code, headers = api_instance.delete_contra_account_with_http_info(korona_account_id, contra_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->delete_contra_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **contra_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_contra_accounts

> <Array<AddOrUpdateResult>> delete_contra_accounts(korona_account_id, body)

deletes a batch of contra accounts

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ContraAccount.new] # Array<ContraAccount> | array of existing contra accounts (id or number required)

begin
  # deletes a batch of contra accounts
  result = api_instance.delete_contra_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->delete_contra_accounts: #{e}"
end
```

#### Using the delete_contra_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_contra_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of contra accounts
  data, status_code, headers = api_instance.delete_contra_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->delete_contra_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ContraAccount&gt;**](ContraAccount.md) | array of existing contra accounts (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_contra_account

> <ContraAccount> get_contra_account(korona_account_id, contra_account_id)

returns a single contra account

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
contra_account_id = 'contra_account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns a single contra account
  result = api_instance.get_contra_account(korona_account_id, contra_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->get_contra_account: #{e}"
end
```

#### Using the get_contra_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContraAccount>, Integer, Hash)> get_contra_account_with_http_info(korona_account_id, contra_account_id)

```ruby
begin
  # returns a single contra account
  data, status_code, headers = api_instance.get_contra_account_with_http_info(korona_account_id, contra_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContraAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->get_contra_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **contra_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ContraAccount**](ContraAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contra_accounts

> <ResultListContraAccount> get_contra_accounts(korona_account_id, opts)

lists all contra accounts

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
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
  # lists all contra accounts
  result = api_instance.get_contra_accounts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->get_contra_accounts: #{e}"
end
```

#### Using the get_contra_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListContraAccount>, Integer, Hash)> get_contra_accounts_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all contra accounts
  data, status_code, headers = api_instance.get_contra_accounts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListContraAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->get_contra_accounts_with_http_info: #{e}"
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

[**ResultListContraAccount**](ResultListContraAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contra_account

> update_contra_account(korona_account_id, contra_account_id, body)

updates the single contra account

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
contra_account_id = 'contra_account_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::ContraAccount.new # ContraAccount | the properties to update of the contra account

begin
  # updates the single contra account
  api_instance.update_contra_account(korona_account_id, contra_account_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->update_contra_account: #{e}"
end
```

#### Using the update_contra_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_contra_account_with_http_info(korona_account_id, contra_account_id, body)

```ruby
begin
  # updates the single contra account
  data, status_code, headers = api_instance.update_contra_account_with_http_info(korona_account_id, contra_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->update_contra_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **contra_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**ContraAccount**](ContraAccount.md) | the properties to update of the contra account |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_contra_accounts

> <Array<AddOrUpdateResult>> update_contra_accounts(korona_account_id, body)

updates a batch of contra accounts

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

api_instance = KoronaCloudClient::ContraAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::ContraAccount.new] # Array<ContraAccount> | an array of existing contra accounts

begin
  # updates a batch of contra accounts
  result = api_instance.update_contra_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->update_contra_accounts: #{e}"
end
```

#### Using the update_contra_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_contra_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of contra accounts
  data, status_code, headers = api_instance.update_contra_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ContraAccountsApi->update_contra_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;ContraAccount&gt;**](ContraAccount.md) | an array of existing contra accounts |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

