# KoronaCloudClient::PriceRulesApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_price_rules**](PriceRulesApi.md#add_price_rules) | **POST** /accounts/{koronaAccountId}/priceRules |  |
| [**delete_price_rule**](PriceRulesApi.md#delete_price_rule) | **DELETE** /accounts/{koronaAccountId}/priceRules/{priceRuleId} |  |
| [**delete_price_rules**](PriceRulesApi.md#delete_price_rules) | **DELETE** /accounts/{koronaAccountId}/priceRules |  |
| [**get_price_rule**](PriceRulesApi.md#get_price_rule) | **GET** /accounts/{koronaAccountId}/priceRules/{priceRuleId} |  |
| [**get_price_rules**](PriceRulesApi.md#get_price_rules) | **GET** /accounts/{koronaAccountId}/priceRules |  |
| [**update_price_rule**](PriceRulesApi.md#update_price_rule) | **PATCH** /accounts/{koronaAccountId}/priceRules/{priceRuleId} |  |
| [**update_price_rules**](PriceRulesApi.md#update_price_rules) | **PATCH** /accounts/{koronaAccountId}/priceRules |  |


## add_price_rules

> <Array<AddOrUpdateResult>> add_price_rules(korona_account_id, price_rule, opts)



adds a batch of new price rules

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule = [KoronaCloudClient::PriceRule.new] # Array<PriceRule> | array of new price rules
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_price_rules(korona_account_id, price_rule, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->add_price_rules: #{e}"
end
```

#### Using the add_price_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_price_rules_with_http_info(korona_account_id, price_rule, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_price_rules_with_http_info(korona_account_id, price_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->add_price_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule** | [**Array&lt;PriceRule&gt;**](PriceRule.md) | array of new price rules |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_price_rule

> delete_price_rule(korona_account_id, price_rule_id)



deletes the single price rule

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule_id = 'price_rule_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_price_rule(korona_account_id, price_rule_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rule: #{e}"
end
```

#### Using the delete_price_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_price_rule_with_http_info(korona_account_id, price_rule_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_price_rule_with_http_info(korona_account_id, price_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_price_rules

> <Array<AddOrUpdateResult>> delete_price_rules(korona_account_id, price_rule)



deletes a batch of price rules

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule = [KoronaCloudClient::PriceRule.new] # Array<PriceRule> | array of existing price rules (id or number required)

begin
  
  result = api_instance.delete_price_rules(korona_account_id, price_rule)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rules: #{e}"
end
```

#### Using the delete_price_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_price_rules_with_http_info(korona_account_id, price_rule)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_price_rules_with_http_info(korona_account_id, price_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->delete_price_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule** | [**Array&lt;PriceRule&gt;**](PriceRule.md) | array of existing price rules (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price_rule

> <PriceRule> get_price_rule(korona_account_id, price_rule_id)



returns the single price rule

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule_id = 'price_rule_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_price_rule(korona_account_id, price_rule_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->get_price_rule: #{e}"
end
```

#### Using the get_price_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PriceRule>, Integer, Hash)> get_price_rule_with_http_info(korona_account_id, price_rule_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_price_rule_with_http_info(korona_account_id, price_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriceRule>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->get_price_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PriceRule**](PriceRule.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_price_rules

> <ResultListPriceRule> get_price_rules(korona_account_id, opts)



lists all price rules

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

api_instance = KoronaCloudClient::PriceRulesApi.new
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
  
  result = api_instance.get_price_rules(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->get_price_rules: #{e}"
end
```

#### Using the get_price_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPriceRule>, Integer, Hash)> get_price_rules_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_price_rules_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPriceRule>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->get_price_rules_with_http_info: #{e}"
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

[**ResultListPriceRule**](ResultListPriceRule.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_price_rule

> update_price_rule(korona_account_id, price_rule_id, price_rule)



updates the single price rule

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule_id = 'price_rule_id_example' # String | id of the related object (important: id should match the uuid-format)
price_rule = KoronaCloudClient::PriceRule.new # PriceRule | the properties to update of the price rule

begin
  
  api_instance.update_price_rule(korona_account_id, price_rule_id, price_rule)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule: #{e}"
end
```

#### Using the update_price_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_price_rule_with_http_info(korona_account_id, price_rule_id, price_rule)

```ruby
begin
  
  data, status_code, headers = api_instance.update_price_rule_with_http_info(korona_account_id, price_rule_id, price_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **price_rule** | [**PriceRule**](PriceRule.md) | the properties to update of the price rule |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_price_rules

> <Array<AddOrUpdateResult>> update_price_rules(korona_account_id, price_rule)



updates a batch of price rules

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

api_instance = KoronaCloudClient::PriceRulesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_rule = [KoronaCloudClient::PriceRule.new] # Array<PriceRule> | array of existing price rules (id or number required)

begin
  
  result = api_instance.update_price_rules(korona_account_id, price_rule)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rules: #{e}"
end
```

#### Using the update_price_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_price_rules_with_http_info(korona_account_id, price_rule)

```ruby
begin
  
  data, status_code, headers = api_instance.update_price_rules_with_http_info(korona_account_id, price_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PriceRulesApi->update_price_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **price_rule** | [**Array&lt;PriceRule&gt;**](PriceRule.md) | array of existing price rules (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

