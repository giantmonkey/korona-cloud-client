# KoronaCloudClient::VouchersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_voucher_voucher_transactions**](VouchersApi.md#add_voucher_voucher_transactions) | **POST** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions | adds a batch of new voucher transactions |
| [**add_vouchers**](VouchersApi.md#add_vouchers) | **POST** /accounts/{koronaAccountId}/vouchers | adds a batch of new vouchers |
| [**delete_voucher**](VouchersApi.md#delete_voucher) | **DELETE** /accounts/{koronaAccountId}/vouchers/{voucherId} | deletes the single voucher |
| [**delete_vouchers**](VouchersApi.md#delete_vouchers) | **DELETE** /accounts/{koronaAccountId}/vouchers | deletes a batch of vouchers |
| [**get_voucher**](VouchersApi.md#get_voucher) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId} | returns the single voucher |
| [**get_voucher_transaction**](VouchersApi.md#get_voucher_transaction) | **GET** /accounts/{koronaAccountId}/voucherTransactions/{voucherTransactionId} | returns the single voucher transaction |
| [**get_voucher_transactions**](VouchersApi.md#get_voucher_transactions) | **GET** /accounts/{koronaAccountId}/voucherTransactions | returns all voucher transactions |
| [**get_voucher_voucher_transaction**](VouchersApi.md#get_voucher_voucher_transaction) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId} | returns the single voucher transaction |
| [**get_voucher_voucher_transactions**](VouchersApi.md#get_voucher_voucher_transactions) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions | returns all voucher transaction of specified voucher |
| [**get_vouchers**](VouchersApi.md#get_vouchers) | **GET** /accounts/{koronaAccountId}/vouchers | lists all vouchers |
| [**update_voucher**](VouchersApi.md#update_voucher) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId} | updates the single voucher |
| [**update_voucher_voucher_transaction**](VouchersApi.md#update_voucher_voucher_transaction) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId} | updates the voucher transaction |
| [**update_voucher_voucher_transactions**](VouchersApi.md#update_voucher_voucher_transactions) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions | updates a batch of vouchers |
| [**update_vouchers**](VouchersApi.md#update_vouchers) | **PATCH** /accounts/{koronaAccountId}/vouchers | updates a batch of vouchers |
| [**void_voucher_voucher_transaction**](VouchersApi.md#void_voucher_voucher_transaction) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId}/void | voids the voucher transaction |


## add_voucher_voucher_transactions

> <Array<AddOrUpdateResult>> add_voucher_voucher_transactions(voucher_id, korona_account_id, body)

adds a batch of new voucher transactions

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::VoucherTransactionResource.new] # Array<VoucherTransactionResource> | array of new voucher transactions

begin
  # adds a batch of new voucher transactions
  result = api_instance.add_voucher_voucher_transactions(voucher_id, korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_voucher_voucher_transactions: #{e}"
end
```

#### Using the add_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, body)

```ruby
begin
  # adds a batch of new voucher transactions
  data, status_code, headers = api_instance.add_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_voucher_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;VoucherTransactionResource&gt;**](VoucherTransactionResource.md) | array of new voucher transactions |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_vouchers

> <Array<AddOrUpdateResult>> add_vouchers(korona_account_id, body, opts)

adds a batch of new vouchers

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

api_instance = KoronaCloudClient::VouchersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::VoucherResource.new] # Array<VoucherResource> | array of new vouchers
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new vouchers
  result = api_instance.add_vouchers(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_vouchers: #{e}"
end
```

#### Using the add_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_vouchers_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new vouchers
  data, status_code, headers = api_instance.add_vouchers_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_vouchers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;VoucherResource&gt;**](VoucherResource.md) | array of new vouchers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_voucher

> delete_voucher(voucher_id, korona_account_id)

deletes the single voucher

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  # deletes the single voucher
  api_instance.delete_voucher(voucher_id, korona_account_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_voucher: #{e}"
end
```

#### Using the delete_voucher_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_voucher_with_http_info(voucher_id, korona_account_id)

```ruby
begin
  # deletes the single voucher
  data, status_code, headers = api_instance.delete_voucher_with_http_info(voucher_id, korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vouchers

> <Array<AddOrUpdateResult>> delete_vouchers(korona_account_id, body)

deletes a batch of vouchers

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

api_instance = KoronaCloudClient::VouchersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::VoucherResource.new] # Array<VoucherResource> | array of existing vouchers (id or number required)

begin
  # deletes a batch of vouchers
  result = api_instance.delete_vouchers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_vouchers: #{e}"
end
```

#### Using the delete_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_vouchers_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of vouchers
  data, status_code, headers = api_instance.delete_vouchers_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_vouchers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;VoucherResource&gt;**](VoucherResource.md) | array of existing vouchers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_voucher

> <VoucherResource> get_voucher(voucher_id, korona_account_id)

returns the single voucher

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  # returns the single voucher
  result = api_instance.get_voucher(voucher_id, korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher: #{e}"
end
```

#### Using the get_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherResource>, Integer, Hash)> get_voucher_with_http_info(voucher_id, korona_account_id)

```ruby
begin
  # returns the single voucher
  data, status_code, headers = api_instance.get_voucher_with_http_info(voucher_id, korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

[**VoucherResource**](VoucherResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_transaction

> <VoucherTransactionResource> get_voucher_transaction(voucher_transaction_id, korona_account_id)

returns the single voucher transaction

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  # returns the single voucher transaction
  result = api_instance.get_voucher_transaction(voucher_transaction_id, korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_transaction: #{e}"
end
```

#### Using the get_voucher_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherTransactionResource>, Integer, Hash)> get_voucher_transaction_with_http_info(voucher_transaction_id, korona_account_id)

```ruby
begin
  # returns the single voucher transaction
  data, status_code, headers = api_instance.get_voucher_transaction_with_http_info(voucher_transaction_id, korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherTransactionResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

[**VoucherTransactionResource**](VoucherTransactionResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_transactions

> <ResultListVoucherTransactionResource> get_voucher_transactions(korona_account_id, opts)

returns all voucher transactions

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

api_instance = KoronaCloudClient::VouchersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  # returns all voucher transactions
  result = api_instance.get_voucher_transactions(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_transactions: #{e}"
end
```

#### Using the get_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherTransactionResource>, Integer, Hash)> get_voucher_transactions_with_http_info(korona_account_id, opts)

```ruby
begin
  # returns all voucher transactions
  data, status_code, headers = api_instance.get_voucher_transactions_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherTransactionResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_transactions_with_http_info: #{e}"
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

### Return type

[**ResultListVoucherTransactionResource**](ResultListVoucherTransactionResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_voucher_transaction

> <VoucherTransactionResource> get_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id)

returns the single voucher transaction

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  # returns the single voucher transaction
  result = api_instance.get_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transaction: #{e}"
end
```

#### Using the get_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherTransactionResource>, Integer, Hash)> get_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id)

```ruby
begin
  # returns the single voucher transaction
  data, status_code, headers = api_instance.get_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherTransactionResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

[**VoucherTransactionResource**](VoucherTransactionResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_voucher_transactions

> <ResultListVoucherTransactionResource> get_voucher_voucher_transactions(voucher_id, korona_account_id, opts)

returns all voucher transaction of specified voucher

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  # returns all voucher transaction of specified voucher
  result = api_instance.get_voucher_voucher_transactions(voucher_id, korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transactions: #{e}"
end
```

#### Using the get_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherTransactionResource>, Integer, Hash)> get_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, opts)

```ruby
begin
  # returns all voucher transaction of specified voucher
  data, status_code, headers = api_instance.get_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherTransactionResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListVoucherTransactionResource**](ResultListVoucherTransactionResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vouchers

> <ResultListVoucherResource> get_vouchers(korona_account_id, opts)

lists all vouchers

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

api_instance = KoronaCloudClient::VouchersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  tag: 'tag_example', # String | voucher configuration id to filter by
  customer: 'customer_example', # String | voucher configuration id to filter by
  number: 'number_example' # String | number of the related object
}

begin
  # lists all vouchers
  result = api_instance.get_vouchers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_vouchers: #{e}"
end
```

#### Using the get_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherResource>, Integer, Hash)> get_vouchers_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all vouchers
  data, status_code, headers = api_instance.get_vouchers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_vouchers_with_http_info: #{e}"
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
| **tag** | **String** | voucher configuration id to filter by | [optional] |
| **customer** | **String** | voucher configuration id to filter by | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListVoucherResource**](ResultListVoucherResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voucher

> update_voucher(voucher_id, korona_account_id, body)

updates the single voucher

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = KoronaCloudClient::VoucherResource.new # VoucherResource | the properties to update of the voucher

begin
  # updates the single voucher
  api_instance.update_voucher(voucher_id, korona_account_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher: #{e}"
end
```

#### Using the update_voucher_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_voucher_with_http_info(voucher_id, korona_account_id, body)

```ruby
begin
  # updates the single voucher
  data, status_code, headers = api_instance.update_voucher_with_http_info(voucher_id, korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**VoucherResource**](VoucherResource.md) | the properties to update of the voucher |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_voucher_voucher_transaction

> update_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id, body)

updates the voucher transaction

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = KoronaCloudClient::VoucherTransactionResource.new # VoucherTransactionResource | the properties to update of the voucher transaction

begin
  # updates the voucher transaction
  api_instance.update_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transaction: #{e}"
end
```

#### Using the update_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id, body)

```ruby
begin
  # updates the voucher transaction
  data, status_code, headers = api_instance.update_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**VoucherTransactionResource**](VoucherTransactionResource.md) | the properties to update of the voucher transaction |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_voucher_voucher_transactions

> <Array<AddOrUpdateResult>> update_voucher_voucher_transactions(voucher_id, korona_account_id, body)

updates a batch of vouchers

[id] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::VoucherTransactionResource.new] # Array<VoucherTransactionResource> | an array of existing voucher transactions

begin
  # updates a batch of vouchers
  result = api_instance.update_voucher_voucher_transactions(voucher_id, korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transactions: #{e}"
end
```

#### Using the update_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, body)

```ruby
begin
  # updates a batch of vouchers
  data, status_code, headers = api_instance.update_voucher_voucher_transactions_with_http_info(voucher_id, korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;VoucherTransactionResource&gt;**](VoucherTransactionResource.md) | an array of existing voucher transactions |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vouchers

> <Array<AddOrUpdateResult>> update_vouchers(korona_account_id, body)

updates a batch of vouchers

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

api_instance = KoronaCloudClient::VouchersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::VoucherResource.new] # Array<VoucherResource> | an array of existing vouchers

begin
  # updates a batch of vouchers
  result = api_instance.update_vouchers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_vouchers: #{e}"
end
```

#### Using the update_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_vouchers_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of vouchers
  data, status_code, headers = api_instance.update_vouchers_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_vouchers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;VoucherResource&gt;**](VoucherResource.md) | an array of existing vouchers |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_voucher_voucher_transaction

> void_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id)

voids the voucher transaction

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

api_instance = KoronaCloudClient::VouchersApi.new
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  # voids the voucher transaction
  api_instance.void_voucher_voucher_transaction(voucher_id, voucher_transaction_id, korona_account_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->void_voucher_voucher_transaction: #{e}"
end
```

#### Using the void_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> void_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id)

```ruby
begin
  # voids the voucher transaction
  data, status_code, headers = api_instance.void_voucher_voucher_transaction_with_http_info(voucher_id, voucher_transaction_id, korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->void_voucher_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

