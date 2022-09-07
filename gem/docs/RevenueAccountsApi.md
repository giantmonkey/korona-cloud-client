# KoronaCloudClient::RevenueAccountsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_revenue_accounts**](RevenueAccountsApi.md#add_revenue_accounts) | **POST** /accounts/{koronaAccountId}/revenueAccounts | adds a batch of new revenue accounts |
| [**delete_revenue_account**](RevenueAccountsApi.md#delete_revenue_account) | **DELETE** /accounts/{koronaAccountId}/revenueAccounts/{revenueAccountId} | deletes the single revenue account |
| [**delete_revenue_accounts**](RevenueAccountsApi.md#delete_revenue_accounts) | **DELETE** /accounts/{koronaAccountId}/revenueAccounts | deletes a batch of revenue accounts |
| [**get_revenue_account**](RevenueAccountsApi.md#get_revenue_account) | **GET** /accounts/{koronaAccountId}/revenueAccounts/{revenueAccountId} | returns a single revenue account |
| [**get_revenue_accounts**](RevenueAccountsApi.md#get_revenue_accounts) | **GET** /accounts/{koronaAccountId}/revenueAccounts | lists all revenue accounts |
| [**update_revenue_account**](RevenueAccountsApi.md#update_revenue_account) | **PATCH** /accounts/{koronaAccountId}/revenueAccounts/{revenueAccountId} | updates the single revenue account |
| [**update_revenue_accounts**](RevenueAccountsApi.md#update_revenue_accounts) | **PATCH** /accounts/{koronaAccountId}/revenueAccounts | updates a batch of revenue accounts |


## add_revenue_accounts

> <Array<AddOrUpdateResult>> add_revenue_accounts(korona_account_id, body, opts)

adds a batch of new revenue accounts

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::RevenueAccount.new] # Array<RevenueAccount> | array of new revenue accounts
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new revenue accounts
  result = api_instance.add_revenue_accounts(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->add_revenue_accounts: #{e}"
end
```

#### Using the add_revenue_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_revenue_accounts_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new revenue accounts
  data, status_code, headers = api_instance.add_revenue_accounts_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->add_revenue_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;RevenueAccount&gt;**](RevenueAccount.md) | array of new revenue accounts |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_revenue_account

> delete_revenue_account(korona_account_id, revenue_account_id)

deletes the single revenue account

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
revenue_account_id = 'revenue_account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single revenue account
  api_instance.delete_revenue_account(korona_account_id, revenue_account_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->delete_revenue_account: #{e}"
end
```

#### Using the delete_revenue_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_revenue_account_with_http_info(korona_account_id, revenue_account_id)

```ruby
begin
  # deletes the single revenue account
  data, status_code, headers = api_instance.delete_revenue_account_with_http_info(korona_account_id, revenue_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->delete_revenue_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **revenue_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_revenue_accounts

> <Array<AddOrUpdateResult>> delete_revenue_accounts(korona_account_id, body)

deletes a batch of revenue accounts

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::RevenueAccount.new] # Array<RevenueAccount> | array of existing revenue accounts (id or number required)

begin
  # deletes a batch of revenue accounts
  result = api_instance.delete_revenue_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->delete_revenue_accounts: #{e}"
end
```

#### Using the delete_revenue_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_revenue_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of revenue accounts
  data, status_code, headers = api_instance.delete_revenue_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->delete_revenue_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;RevenueAccount&gt;**](RevenueAccount.md) | array of existing revenue accounts (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_revenue_account

> <RevenueAccount> get_revenue_account(korona_account_id, revenue_account_id)

returns a single revenue account

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
revenue_account_id = 'revenue_account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns a single revenue account
  result = api_instance.get_revenue_account(korona_account_id, revenue_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->get_revenue_account: #{e}"
end
```

#### Using the get_revenue_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevenueAccount>, Integer, Hash)> get_revenue_account_with_http_info(korona_account_id, revenue_account_id)

```ruby
begin
  # returns a single revenue account
  data, status_code, headers = api_instance.get_revenue_account_with_http_info(korona_account_id, revenue_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevenueAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->get_revenue_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **revenue_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**RevenueAccount**](RevenueAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_revenue_accounts

> <ResultListRevenueAccount> get_revenue_accounts(korona_account_id, opts)

lists all revenue accounts

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
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
  # lists all revenue accounts
  result = api_instance.get_revenue_accounts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->get_revenue_accounts: #{e}"
end
```

#### Using the get_revenue_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListRevenueAccount>, Integer, Hash)> get_revenue_accounts_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all revenue accounts
  data, status_code, headers = api_instance.get_revenue_accounts_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListRevenueAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->get_revenue_accounts_with_http_info: #{e}"
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

[**ResultListRevenueAccount**](ResultListRevenueAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_revenue_account

> update_revenue_account(korona_account_id, revenue_account_id, body)

updates the single revenue account

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
revenue_account_id = 'revenue_account_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::RevenueAccount.new # RevenueAccount | the properties to update of the revenue account

begin
  # updates the single revenue account
  api_instance.update_revenue_account(korona_account_id, revenue_account_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->update_revenue_account: #{e}"
end
```

#### Using the update_revenue_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_revenue_account_with_http_info(korona_account_id, revenue_account_id, body)

```ruby
begin
  # updates the single revenue account
  data, status_code, headers = api_instance.update_revenue_account_with_http_info(korona_account_id, revenue_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->update_revenue_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **revenue_account_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**RevenueAccount**](RevenueAccount.md) | the properties to update of the revenue account |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_revenue_accounts

> <Array<AddOrUpdateResult>> update_revenue_accounts(korona_account_id, body)

updates a batch of revenue accounts

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

api_instance = KoronaCloudClient::RevenueAccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::RevenueAccount.new] # Array<RevenueAccount> | an array of existing revenue accounts

begin
  # updates a batch of revenue accounts
  result = api_instance.update_revenue_accounts(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->update_revenue_accounts: #{e}"
end
```

#### Using the update_revenue_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_revenue_accounts_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of revenue accounts
  data, status_code, headers = api_instance.update_revenue_accounts_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling RevenueAccountsApi->update_revenue_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;RevenueAccount&gt;**](RevenueAccount.md) | an array of existing revenue accounts |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

