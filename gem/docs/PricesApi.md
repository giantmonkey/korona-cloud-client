# KoronaCloudClient::PricesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_prices**](PricesApi.md#add_prices) | **POST** /accounts/{koronaAccountId}/prices |  |
| [**delete_prices**](PricesApi.md#delete_prices) | **DELETE** /accounts/{koronaAccountId}/prices |  |
| [**get_price**](PricesApi.md#get_price) | **GET** /accounts/{koronaAccountId}/prices/{priceId} |  |
| [**get_prices**](PricesApi.md#get_prices) | **GET** /accounts/{koronaAccountId}/prices |  |
| [**update_prices**](PricesApi.md#update_prices) | **PATCH** /accounts/{koronaAccountId}/prices |  |


## add_prices

> <Array<AddOrUpdateResult>> add_prices(korona_account_id, price, opts)



adds a batch of new product prices

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

api_instance = KoronaCloudClient::PricesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price = [KoronaCloudClient::Price.new({product: KoronaCloudClient::ModelReference.new})] # Array<Price> | array of new product prices
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_prices(korona_account_id, price, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->add_prices: #{e}"
end
```

#### Using the add_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_prices_with_http_info(korona_account_id, price, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_prices_with_http_info(korona_account_id, price, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->add_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price** | [**Array&lt;Price&gt;**](Price.md) | array of new product prices |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_prices

> <Array<AddOrUpdateResult>> delete_prices(korona_account_id, price)



deletes a batch of product prices

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

api_instance = KoronaCloudClient::PricesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price = [KoronaCloudClient::Price.new({product: KoronaCloudClient::ModelReference.new})] # Array<Price> | array of existing product prices (id or number required)

begin
  
  result = api_instance.delete_prices(korona_account_id, price)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->delete_prices: #{e}"
end
```

#### Using the delete_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_prices_with_http_info(korona_account_id, price)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_prices_with_http_info(korona_account_id, price)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->delete_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price** | [**Array&lt;Price&gt;**](Price.md) | array of existing product prices (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price

> <Price> get_price(korona_account_id, price_id)



returns the single product price

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

api_instance = KoronaCloudClient::PricesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_id = 'price_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_price(korona_account_id, price_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->get_price: #{e}"
end
```

#### Using the get_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Price>, Integer, Hash)> get_price_with_http_info(korona_account_id, price_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_price_with_http_info(korona_account_id, price_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Price>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->get_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Price**](Price.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prices

> <ResultListPrice> get_prices(korona_account_id, opts)



lists all product prices

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

api_instance = KoronaCloudClient::PricesApi.new
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
  
  result = api_instance.get_prices(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->get_prices: #{e}"
end
```

#### Using the get_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPrice>, Integer, Hash)> get_prices_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_prices_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPrice>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->get_prices_with_http_info: #{e}"
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

[**ResultListPrice**](ResultListPrice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_prices

> <Array<AddOrUpdateResult>> update_prices(korona_account_id, price)



updates a batch of product prices

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

api_instance = KoronaCloudClient::PricesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price = [KoronaCloudClient::Price.new({product: KoronaCloudClient::ModelReference.new})] # Array<Price> | array of existing product prices (id or number required)

begin
  
  result = api_instance.update_prices(korona_account_id, price)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->update_prices: #{e}"
end
```

#### Using the update_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_prices_with_http_info(korona_account_id, price)

```ruby
begin
  
  data, status_code, headers = api_instance.update_prices_with_http_info(korona_account_id, price)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PricesApi->update_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price** | [**Array&lt;Price&gt;**](Price.md) | array of existing product prices (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

