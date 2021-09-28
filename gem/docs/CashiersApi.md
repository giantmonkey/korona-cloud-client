# KoronaCloudClient::CashiersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_cashiers**](CashiersApi.md#add_cashiers) | **POST** /accounts/{koronaAccountId}/cashiers | adds a batch of new cashiers |
| [**delete_cashier**](CashiersApi.md#delete_cashier) | **DELETE** /accounts/{koronaAccountId}/cashiers/{cashierId} | deletes the single cashier |
| [**delete_cashiers**](CashiersApi.md#delete_cashiers) | **DELETE** /accounts/{koronaAccountId}/cashiers | deletes a batch of cashiers |
| [**get_cashier**](CashiersApi.md#get_cashier) | **GET** /accounts/{koronaAccountId}/cashiers/{cashierId} | returns the single cashier |
| [**get_cashiers**](CashiersApi.md#get_cashiers) | **GET** /accounts/{koronaAccountId}/cashiers | lists all cashiers |
| [**update_cashier**](CashiersApi.md#update_cashier) | **PATCH** /accounts/{koronaAccountId}/cashiers/{cashierId} | updates the single cashier |
| [**update_cashiers**](CashiersApi.md#update_cashiers) | **PATCH** /accounts/{koronaAccountId}/cashiers | updates a batch of cashiers |


## add_cashiers

> <Array<AddOrUpdateResult>> add_cashiers(korona_account_id, body, opts)

adds a batch of new cashiers

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Cashier.new] # Array<Cashier> | array of new cashiers
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new cashiers
  result = api_instance.add_cashiers(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->add_cashiers: #{e}"
end
```

#### Using the add_cashiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_cashiers_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new cashiers
  data, status_code, headers = api_instance.add_cashiers_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->add_cashiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Cashier&gt;**](Cashier.md) | array of new cashiers |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cashier

> delete_cashier(korona_account_id, cashier_id)

deletes the single cashier

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_id = 'cashier_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single cashier
  api_instance.delete_cashier(korona_account_id, cashier_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->delete_cashier: #{e}"
end
```

#### Using the delete_cashier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cashier_with_http_info(korona_account_id, cashier_id)

```ruby
begin
  # deletes the single cashier
  data, status_code, headers = api_instance.delete_cashier_with_http_info(korona_account_id, cashier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->delete_cashier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cashiers

> <Array<AddOrUpdateResult>> delete_cashiers(korona_account_id, body)

deletes a batch of cashiers

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Cashier.new] # Array<Cashier> | array of existing cashiers (id or number required)

begin
  # deletes a batch of cashiers
  result = api_instance.delete_cashiers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->delete_cashiers: #{e}"
end
```

#### Using the delete_cashiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_cashiers_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of cashiers
  data, status_code, headers = api_instance.delete_cashiers_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->delete_cashiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Cashier&gt;**](Cashier.md) | array of existing cashiers (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cashier

> <Cashier> get_cashier(korona_account_id, cashier_id, opts)

returns the single cashier

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_id = 'cashier_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  display_cashier_credentials: 'HASH' # String | display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
}

begin
  # returns the single cashier
  result = api_instance.get_cashier(korona_account_id, cashier_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->get_cashier: #{e}"
end
```

#### Using the get_cashier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cashier>, Integer, Hash)> get_cashier_with_http_info(korona_account_id, cashier_id, opts)

```ruby
begin
  # returns the single cashier
  data, status_code, headers = api_instance.get_cashier_with_http_info(korona_account_id, cashier_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cashier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->get_cashier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **display_cashier_credentials** | **String** | display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE) | [optional] |

### Return type

[**Cashier**](Cashier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cashiers

> <ResultListCashier> get_cashiers(korona_account_id, opts)

lists all cashiers

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  display_cashier_credentials: 'HASH', # String | display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all cashiers
  result = api_instance.get_cashiers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->get_cashiers: #{e}"
end
```

#### Using the get_cashiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCashier>, Integer, Hash)> get_cashiers_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all cashiers
  data, status_code, headers = api_instance.get_cashiers_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCashier>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->get_cashiers_with_http_info: #{e}"
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
| **display_cashier_credentials** | **String** | display cashier credentials loginCode and loginPassword as (HASH|PLAIN|NONE) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListCashier**](ResultListCashier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cashier

> update_cashier(korona_account_id, cashier_id, body)

updates the single cashier

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_id = 'cashier_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Cashier.new # Cashier | the properties to update of the cashier

begin
  # updates the single cashier
  api_instance.update_cashier(korona_account_id, cashier_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->update_cashier: #{e}"
end
```

#### Using the update_cashier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_cashier_with_http_info(korona_account_id, cashier_id, body)

```ruby
begin
  # updates the single cashier
  data, status_code, headers = api_instance.update_cashier_with_http_info(korona_account_id, cashier_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->update_cashier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Cashier**](Cashier.md) | the properties to update of the cashier |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cashiers

> <Array<AddOrUpdateResult>> update_cashiers(korona_account_id, body)

updates a batch of cashiers

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

api_instance = KoronaCloudClient::CashiersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Cashier.new] # Array<Cashier> | an array of existing cashiers

begin
  # updates a batch of cashiers
  result = api_instance.update_cashiers(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->update_cashiers: #{e}"
end
```

#### Using the update_cashiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_cashiers_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of cashiers
  data, status_code, headers = api_instance.update_cashiers_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashiersApi->update_cashiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Cashier&gt;**](Cashier.md) | an array of existing cashiers |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

