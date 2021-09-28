# KoronaCloudClient::AccountsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_accounts**](AccountsApi.md#add_accounts) | **POST** /accounts/{koronaAccountId}/accounts | adds a batch of new accounts |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /accounts/{koronaAccountId}/accounts/{accountId} | deletes the single account |
| [**delete_accounts**](AccountsApi.md#delete_accounts) | **DELETE** /accounts/{koronaAccountId}/accounts | deletes a batch of accounts |
| [**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{koronaAccountId}/accounts/{accountId} | returns a single account |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts/{koronaAccountId}/accounts | lists all accounts |
| [**update_account**](AccountsApi.md#update_account) | **PATCH** /accounts/{koronaAccountId}/accounts/{accountId} | updates the single account |
| [**update_accounts**](AccountsApi.md#update_accounts) | **PATCH** /accounts/{koronaAccountId}/accounts | updates a batch of accounts |


## add_accounts

> <Array<AddOrUpdateResult>> add_accounts(korona_account_id, body, opts)

adds a batch of new accounts

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Account.new] # Array<Account> | array of new accounts
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new accounts
  result = api_instance.add_accounts(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->add_accounts: #{e}"
end
```

#### Using the add_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_accounts_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new accounts
  data, status_code, headers = api_instance.add_accounts_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->add_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Account&gt;**](Account.md) | array of new accounts |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account

> delete_account(korona_account_id, account_id)

deletes the single account

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
account_id = 'account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single account
  api_instance.delete_account(korona_account_id, account_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_with_http_info(korona_account_id, account_id)

```ruby
begin
  # deletes the single account
  data, status_code, headers = api_instance.delete_account_with_http_info(korona_account_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_accounts

> <Array<AddOrUpdateResult>> delete_accounts(korona_account_id, body)

deletes a batch of accounts

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Account.new] # Array<Account> | array of existing accounts (id or number required)

begin
  # deletes a batch of accounts
  result = api_instance.delete_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->delete_accounts: #{e}"
end
```

#### Using the delete_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of accounts
  data, status_code, headers = api_instance.delete_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->delete_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Account&gt;**](Account.md) | array of existing accounts (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account

> <Account> get_account(korona_account_id, account_id)

returns a single account

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
account_id = 'account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns a single account
  result = api_instance.get_account(korona_account_id, account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_account_with_http_info(korona_account_id, account_id)

```ruby
begin
  # returns a single account
  data, status_code, headers = api_instance.get_account_with_http_info(korona_account_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Account**](Account.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <ResultListAccount> get_accounts(korona_account_id, opts)

lists all accounts

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  # lists all accounts
  result = api_instance.get_accounts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListAccount>, Integer, Hash)> get_accounts_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all accounts
  data, status_code, headers = api_instance.get_accounts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
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

### Return type

[**ResultListAccount**](ResultListAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account

> update_account(korona_account_id, account_id, body)

updates the single account

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
account_id = 'account_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Account.new # Account | the properties to update of the account

begin
  # updates the single account
  api_instance.update_account(korona_account_id, account_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_account_with_http_info(korona_account_id, account_id, body)

```ruby
begin
  # updates the single account
  data, status_code, headers = api_instance.update_account_with_http_info(korona_account_id, account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Account**](Account.md) | the properties to update of the account |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_accounts

> <Array<AddOrUpdateResult>> update_accounts(korona_account_id, body)

updates a batch of accounts

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Account.new] # Array<Account> | an array of existing accounts

begin
  # updates a batch of accounts
  result = api_instance.update_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->update_accounts: #{e}"
end
```

#### Using the update_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of accounts
  data, status_code, headers = api_instance.update_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AccountsApi->update_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Account&gt;**](Account.md) | an array of existing accounts |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

