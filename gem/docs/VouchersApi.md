# KoronaCloudClient::VouchersApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_voucher_voucher_transactions**](VouchersApi.md#add_voucher_voucher_transactions) | **POST** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions |  |
| [**add_vouchers**](VouchersApi.md#add_vouchers) | **POST** /accounts/{koronaAccountId}/vouchers |  |
| [**delete_voucher**](VouchersApi.md#delete_voucher) | **DELETE** /accounts/{koronaAccountId}/vouchers/{voucherId} |  |
| [**delete_vouchers**](VouchersApi.md#delete_vouchers) | **DELETE** /accounts/{koronaAccountId}/vouchers |  |
| [**get_voucher**](VouchersApi.md#get_voucher) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId} |  |
| [**get_voucher_voucher_transaction**](VouchersApi.md#get_voucher_voucher_transaction) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId} |  |
| [**get_voucher_voucher_transactions**](VouchersApi.md#get_voucher_voucher_transactions) | **GET** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions |  |
| [**get_vouchers**](VouchersApi.md#get_vouchers) | **GET** /accounts/{koronaAccountId}/vouchers |  |
| [**update_voucher**](VouchersApi.md#update_voucher) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId} |  |
| [**update_voucher_voucher_transaction**](VouchersApi.md#update_voucher_voucher_transaction) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId} |  |
| [**update_voucher_voucher_transactions**](VouchersApi.md#update_voucher_voucher_transactions) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions |  |
| [**update_vouchers**](VouchersApi.md#update_vouchers) | **PATCH** /accounts/{koronaAccountId}/vouchers |  |
| [**void_voucher_voucher_transaction**](VouchersApi.md#void_voucher_voucher_transaction) | **PATCH** /accounts/{koronaAccountId}/vouchers/{voucherId}/transactions/{voucherTransactionId}/void |  |


## add_voucher_voucher_transactions

> <Array<AddOrUpdateResult>> add_voucher_voucher_transactions(korona_account_id, voucher_id, voucher_transaction)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction = [KoronaCloudClient::VoucherTransaction.new] # Array<VoucherTransaction> | array of new voucher transactions

begin
  
  result = api_instance.add_voucher_voucher_transactions(korona_account_id, voucher_id, voucher_transaction)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_voucher_voucher_transactions: #{e}"
end
```

#### Using the add_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, voucher_transaction)

```ruby
begin
  
  data, status_code, headers = api_instance.add_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, voucher_transaction)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction** | [**Array&lt;VoucherTransaction&gt;**](VoucherTransaction.md) | array of new voucher transactions |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_vouchers

> <Array<AddOrUpdateResult>> add_vouchers(korona_account_id, voucher, opts)



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
voucher = [KoronaCloudClient::Voucher.new] # Array<Voucher> | array of new vouchers
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_vouchers(korona_account_id, voucher, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->add_vouchers: #{e}"
end
```

#### Using the add_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_vouchers_with_http_info(korona_account_id, voucher, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_vouchers_with_http_info(korona_account_id, voucher, opts)
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
| **voucher** | [**Array&lt;Voucher&gt;**](Voucher.md) | array of new vouchers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_voucher

> delete_voucher(korona_account_id, voucher_id)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_voucher(korona_account_id, voucher_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_voucher: #{e}"
end
```

#### Using the delete_voucher_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_voucher_with_http_info(korona_account_id, voucher_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_voucher_with_http_info(korona_account_id, voucher_id)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vouchers

> <Array<AddOrUpdateResult>> delete_vouchers(korona_account_id, voucher)



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
voucher = [KoronaCloudClient::Voucher.new] # Array<Voucher> | array of existing vouchers (id or number required)

begin
  
  result = api_instance.delete_vouchers(korona_account_id, voucher)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->delete_vouchers: #{e}"
end
```

#### Using the delete_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_vouchers_with_http_info(korona_account_id, voucher)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_vouchers_with_http_info(korona_account_id, voucher)
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
| **voucher** | [**Array&lt;Voucher&gt;**](Voucher.md) | array of existing vouchers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_voucher

> <Voucher> get_voucher(korona_account_id, voucher_id)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_voucher(korona_account_id, voucher_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher: #{e}"
end
```

#### Using the get_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Voucher>, Integer, Hash)> get_voucher_with_http_info(korona_account_id, voucher_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_with_http_info(korona_account_id, voucher_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Voucher>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Voucher**](Voucher.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_voucher_transaction

> <VoucherTransaction> get_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transaction: #{e}"
end
```

#### Using the get_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherTransaction>, Integer, Hash)> get_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherTransaction>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**VoucherTransaction**](VoucherTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_voucher_transactions

> <ResultListVoucherTransaction> get_voucher_voucher_transactions(korona_account_id, voucher_id, opts)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_voucher_voucher_transactions(korona_account_id, voucher_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transactions: #{e}"
end
```

#### Using the get_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherTransaction>, Integer, Hash)> get_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherTransaction>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListVoucherTransaction**](ResultListVoucherTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vouchers

> <ResultListVoucher> get_vouchers(korona_account_id, opts)



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
  
  result = api_instance.get_vouchers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->get_vouchers: #{e}"
end
```

#### Using the get_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucher>, Integer, Hash)> get_vouchers_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vouchers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucher>
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

[**ResultListVoucher**](ResultListVoucher.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voucher

> update_voucher(korona_account_id, voucher_id, voucher)



updates the single voucher; if [number] is set, the number of the object will change and the resource location as well

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
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher = KoronaCloudClient::Voucher.new # Voucher | the properties to update of the voucher

begin
  
  api_instance.update_voucher(korona_account_id, voucher_id, voucher)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher: #{e}"
end
```

#### Using the update_voucher_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_voucher_with_http_info(korona_account_id, voucher_id, voucher)

```ruby
begin
  
  data, status_code, headers = api_instance.update_voucher_with_http_info(korona_account_id, voucher_id, voucher)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher** | [**Voucher**](Voucher.md) | the properties to update of the voucher |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_voucher_voucher_transaction

> update_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id, voucher_transaction)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction = KoronaCloudClient::VoucherTransaction.new # VoucherTransaction | the properties to update of the voucher transaction

begin
  
  api_instance.update_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id, voucher_transaction)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transaction: #{e}"
end
```

#### Using the update_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id, voucher_transaction)

```ruby
begin
  
  data, status_code, headers = api_instance.update_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id, voucher_transaction)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction** | [**VoucherTransaction**](VoucherTransaction.md) | the properties to update of the voucher transaction |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_voucher_voucher_transactions

> <Array<AddOrUpdateResult>> update_voucher_voucher_transactions(korona_account_id, voucher_id, voucher_transaction)



updates a batch of vouchers; [id] must be set in the objects, otherwise the object cannot be updated

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
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction = [KoronaCloudClient::VoucherTransaction.new] # Array<VoucherTransaction> | an array of existing voucher transactions

begin
  
  result = api_instance.update_voucher_voucher_transactions(korona_account_id, voucher_id, voucher_transaction)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_voucher_transactions: #{e}"
end
```

#### Using the update_voucher_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, voucher_transaction)

```ruby
begin
  
  data, status_code, headers = api_instance.update_voucher_voucher_transactions_with_http_info(korona_account_id, voucher_id, voucher_transaction)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction** | [**Array&lt;VoucherTransaction&gt;**](VoucherTransaction.md) | an array of existing voucher transactions |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vouchers

> <Array<AddOrUpdateResult>> update_vouchers(korona_account_id, voucher)



updates a batch of vouchers; [number] must be set in the objects, otherwise the object cannot be updated

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
voucher = [KoronaCloudClient::Voucher.new] # Array<Voucher> | an array of existing vouchers

begin
  
  result = api_instance.update_vouchers(korona_account_id, voucher)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->update_vouchers: #{e}"
end
```

#### Using the update_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_vouchers_with_http_info(korona_account_id, voucher)

```ruby
begin
  
  data, status_code, headers = api_instance.update_vouchers_with_http_info(korona_account_id, voucher)
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
| **voucher** | [**Array&lt;Voucher&gt;**](Voucher.md) | an array of existing vouchers |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_voucher_voucher_transaction

> void_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id)



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
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_id = 'voucher_id_example' # String | id of the related object (important: id should match the uuid-format)
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.void_voucher_voucher_transaction(korona_account_id, voucher_id, voucher_transaction_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VouchersApi->void_voucher_voucher_transaction: #{e}"
end
```

#### Using the void_voucher_voucher_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> void_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.void_voucher_voucher_transaction_with_http_info(korona_account_id, voucher_id, voucher_transaction_id)
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
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

