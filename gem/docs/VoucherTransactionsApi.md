# KoronaCloudClient::VoucherTransactionsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_voucher_transaction**](VoucherTransactionsApi.md#get_voucher_transaction) | **GET** /accounts/{koronaAccountId}/voucherTransactions/{voucherTransactionId} |  |
| [**get_voucher_transactions**](VoucherTransactionsApi.md#get_voucher_transactions) | **GET** /accounts/{koronaAccountId}/voucherTransactions |  |


## get_voucher_transaction

> <VoucherTransaction> get_voucher_transaction(korona_account_id, voucher_transaction_id)



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

api_instance = KoronaCloudClient::VoucherTransactionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
voucher_transaction_id = 'voucher_transaction_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_voucher_transaction(korona_account_id, voucher_transaction_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherTransactionsApi->get_voucher_transaction: #{e}"
end
```

#### Using the get_voucher_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherTransaction>, Integer, Hash)> get_voucher_transaction_with_http_info(korona_account_id, voucher_transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_transaction_with_http_info(korona_account_id, voucher_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherTransaction>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherTransactionsApi->get_voucher_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **voucher_transaction_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**VoucherTransaction**](VoucherTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_transactions

> <ResultListVoucherTransaction> get_voucher_transactions(korona_account_id, opts)



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

api_instance = KoronaCloudClient::VoucherTransactionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  
  result = api_instance.get_voucher_transactions(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherTransactionsApi->get_voucher_transactions: #{e}"
end
```

#### Using the get_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListVoucherTransaction>, Integer, Hash)> get_voucher_transactions_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_voucher_transactions_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListVoucherTransaction>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling VoucherTransactionsApi->get_voucher_transactions_with_http_info: #{e}"
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

[**ResultListVoucherTransaction**](ResultListVoucherTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

