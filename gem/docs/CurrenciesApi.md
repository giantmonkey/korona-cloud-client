# KoronaCloudClient::CurrenciesApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_currencies**](CurrenciesApi.md#add_currencies) | **POST** /accounts/{koronaAccountId}/currencies |  |
| [**delete_currencies**](CurrenciesApi.md#delete_currencies) | **DELETE** /accounts/{koronaAccountId}/currencies |  |
| [**get_currencies**](CurrenciesApi.md#get_currencies) | **GET** /accounts/{koronaAccountId}/currencies |  |
| [**get_currency**](CurrenciesApi.md#get_currency) | **GET** /accounts/{koronaAccountId}/currencies/{currencyId} |  |
| [**update_currencies**](CurrenciesApi.md#update_currencies) | **PATCH** /accounts/{koronaAccountId}/currencies |  |


## add_currencies

> <Array<AddOrUpdateResult>> add_currencies(korona_account_id, currency, opts)



adds a batch of new currencies

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

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
currency = [KoronaCloudClient::Currency.new] # Array<Currency> | array of new currencies
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_currencies(korona_account_id, currency, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->add_currencies: #{e}"
end
```

#### Using the add_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_currencies_with_http_info(korona_account_id, currency, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_currencies_with_http_info(korona_account_id, currency, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->add_currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **currency** | [**Array&lt;Currency&gt;**](Currency.md) | array of new currencies |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_currencies

> <Array<AddOrUpdateResult>> delete_currencies(korona_account_id, currency)



deletes a batch of currencies

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

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
currency = [KoronaCloudClient::Currency.new] # Array<Currency> | array of existing currencies (id or number required)

begin
  
  result = api_instance.delete_currencies(korona_account_id, currency)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->delete_currencies: #{e}"
end
```

#### Using the delete_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_currencies_with_http_info(korona_account_id, currency)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_currencies_with_http_info(korona_account_id, currency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->delete_currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **currency** | [**Array&lt;Currency&gt;**](Currency.md) | array of existing currencies (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_currencies

> <ResultListCurrency> get_currencies(korona_account_id, opts)



lists all currencies

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

api_instance = KoronaCloudClient::CurrenciesApi.new
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
  
  result = api_instance.get_currencies(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->get_currencies: #{e}"
end
```

#### Using the get_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCurrency>, Integer, Hash)> get_currencies_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_currencies_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCurrency>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->get_currencies_with_http_info: #{e}"
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

[**ResultListCurrency**](ResultListCurrency.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_currency

> <Currency> get_currency(korona_account_id, currency_id)



returns the single currency

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

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
currency_id = 'currency_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_currency(korona_account_id, currency_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->get_currency: #{e}"
end
```

#### Using the get_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Currency>, Integer, Hash)> get_currency_with_http_info(korona_account_id, currency_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_currency_with_http_info(korona_account_id, currency_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Currency>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->get_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **currency_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Currency**](Currency.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_currencies

> <Array<AddOrUpdateResult>> update_currencies(korona_account_id, currency)



updates a batch of currencies

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

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
currency = [KoronaCloudClient::Currency.new] # Array<Currency> | array of existing currencies (id or number required)

begin
  
  result = api_instance.update_currencies(korona_account_id, currency)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->update_currencies: #{e}"
end
```

#### Using the update_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_currencies_with_http_info(korona_account_id, currency)

```ruby
begin
  
  data, status_code, headers = api_instance.update_currencies_with_http_info(korona_account_id, currency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CurrenciesApi->update_currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **currency** | [**Array&lt;Currency&gt;**](Currency.md) | array of existing currencies (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

