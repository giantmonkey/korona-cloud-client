# KoronaCloudClient::PromotionsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_promotions**](PromotionsApi.md#add_promotions) | **POST** /accounts/{koronaAccountId}/promotions | adds a batch of new promotions |
| [**delete_promotion**](PromotionsApi.md#delete_promotion) | **DELETE** /accounts/{koronaAccountId}/promotions/{promotionId} | deletes the single promotion |
| [**delete_promotions**](PromotionsApi.md#delete_promotions) | **DELETE** /accounts/{koronaAccountId}/promotions | deletes a batch of promotions |
| [**get_promotion**](PromotionsApi.md#get_promotion) | **GET** /accounts/{koronaAccountId}/promotions/{promotionId} | returns the single promotion |
| [**get_promotions**](PromotionsApi.md#get_promotions) | **GET** /accounts/{koronaAccountId}/promotions | lists all promotions |
| [**update_promotion**](PromotionsApi.md#update_promotion) | **PATCH** /accounts/{koronaAccountId}/promotions/{promotionId} | updates the single promotion |
| [**update_promotions**](PromotionsApi.md#update_promotions) | **PATCH** /accounts/{koronaAccountId}/promotions | updates a batch of promotions |


## add_promotions

> <Array<AddOrUpdateResult>> add_promotions(korona_account_id, body, opts)

adds a batch of new promotions

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Promotion.new] # Array<Promotion> | array of new promotions
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new promotions
  result = api_instance.add_promotions(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->add_promotions: #{e}"
end
```

#### Using the add_promotions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_promotions_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new promotions
  data, status_code, headers = api_instance.add_promotions_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->add_promotions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Promotion&gt;**](Promotion.md) | array of new promotions |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_promotion

> delete_promotion(korona_account_id, promotion_id)

deletes the single promotion

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
promotion_id = 'promotion_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single promotion
  api_instance.delete_promotion(korona_account_id, promotion_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion: #{e}"
end
```

#### Using the delete_promotion_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_with_http_info(korona_account_id, promotion_id)

```ruby
begin
  # deletes the single promotion
  data, status_code, headers = api_instance.delete_promotion_with_http_info(korona_account_id, promotion_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **promotion_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_promotions

> <Array<AddOrUpdateResult>> delete_promotions(korona_account_id, body)

deletes a batch of promotions

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Promotion.new] # Array<Promotion> | array of existing promotions (id or number  required)

begin
  # deletes a batch of promotions
  result = api_instance.delete_promotions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotions: #{e}"
end
```

#### Using the delete_promotions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_promotions_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of promotions
  data, status_code, headers = api_instance.delete_promotions_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Promotion&gt;**](Promotion.md) | array of existing promotions (id or number  required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_promotion

> <Promotion> get_promotion(korona_account_id, promotion_id)

returns the single promotion

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
promotion_id = 'promotion_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single promotion
  result = api_instance.get_promotion(korona_account_id, promotion_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion: #{e}"
end
```

#### Using the get_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Promotion>, Integer, Hash)> get_promotion_with_http_info(korona_account_id, promotion_id)

```ruby
begin
  # returns the single promotion
  data, status_code, headers = api_instance.get_promotion_with_http_info(korona_account_id, promotion_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Promotion>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **promotion_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Promotion**](Promotion.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_promotions

> <ResultListPromotion> get_promotions(korona_account_id, opts)

lists all promotions

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

api_instance = KoronaCloudClient::PromotionsApi.new
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
  # lists all promotions
  result = api_instance.get_promotions(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotions: #{e}"
end
```

#### Using the get_promotions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPromotion>, Integer, Hash)> get_promotions_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all promotions
  data, status_code, headers = api_instance.get_promotions_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPromotion>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotions_with_http_info: #{e}"
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

[**ResultListPromotion**](ResultListPromotion.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_promotion

> update_promotion(korona_account_id, promotion_id, body)

updates the single promotion

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
promotion_id = 'promotion_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Promotion.new # Promotion | the properties to update of the promotion

begin
  # updates the single promotion
  api_instance.update_promotion(korona_account_id, promotion_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion: #{e}"
end
```

#### Using the update_promotion_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_promotion_with_http_info(korona_account_id, promotion_id, body)

```ruby
begin
  # updates the single promotion
  data, status_code, headers = api_instance.update_promotion_with_http_info(korona_account_id, promotion_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **promotion_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Promotion**](Promotion.md) | the properties to update of the promotion |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_promotions

> <Array<AddOrUpdateResult>> update_promotions(korona_account_id, body)

updates a batch of promotions

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

api_instance = KoronaCloudClient::PromotionsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Promotion.new] # Array<Promotion> | array of existing promotions (id or number  required)

begin
  # updates a batch of promotions
  result = api_instance.update_promotions(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotions: #{e}"
end
```

#### Using the update_promotions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_promotions_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of promotions
  data, status_code, headers = api_instance.update_promotions_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Promotion&gt;**](Promotion.md) | array of existing promotions (id or number  required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

