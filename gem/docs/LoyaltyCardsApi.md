# KoronaCloudClient::LoyaltyCardsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_loyalty_cards**](LoyaltyCardsApi.md#add_loyalty_cards) | **POST** /accounts/{koronaAccountId}/loyaltyCards |  |
| [**delete_loyalty_card**](LoyaltyCardsApi.md#delete_loyalty_card) | **DELETE** /accounts/{koronaAccountId}/loyaltyCards/{loyaltyCardId} |  |
| [**delete_loyalty_cards**](LoyaltyCardsApi.md#delete_loyalty_cards) | **DELETE** /accounts/{koronaAccountId}/loyaltyCards |  |
| [**get_loyalty_card**](LoyaltyCardsApi.md#get_loyalty_card) | **GET** /accounts/{koronaAccountId}/loyaltyCards/{loyaltyCardId} |  |
| [**get_loyalty_cards**](LoyaltyCardsApi.md#get_loyalty_cards) | **GET** /accounts/{koronaAccountId}/loyaltyCards |  |
| [**update_loyalty_card**](LoyaltyCardsApi.md#update_loyalty_card) | **PATCH** /accounts/{koronaAccountId}/loyaltyCards/{loyaltyCardId} |  |
| [**update_loyalty_cards**](LoyaltyCardsApi.md#update_loyalty_cards) | **PATCH** /accounts/{koronaAccountId}/loyaltyCards |  |


## add_loyalty_cards

> <Array<AddOrUpdateResult>> add_loyalty_cards(korona_account_id, loyalty_card, opts)



adds a batch of new loyalty cards

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card = [KoronaCloudClient::LoyaltyCard.new({bonus_points: 3.56, stamps: 37})] # Array<LoyaltyCard> | array of new loyalty cards
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_loyalty_cards(korona_account_id, loyalty_card, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->add_loyalty_cards: #{e}"
end
```

#### Using the add_loyalty_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_loyalty_cards_with_http_info(korona_account_id, loyalty_card, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_loyalty_cards_with_http_info(korona_account_id, loyalty_card, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->add_loyalty_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card** | [**Array&lt;LoyaltyCard&gt;**](LoyaltyCard.md) | array of new loyalty cards |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_loyalty_card

> delete_loyalty_card(korona_account_id, loyalty_card_id)



deletes the single loyalty card

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card_id = 'loyalty_card_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_loyalty_card(korona_account_id, loyalty_card_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->delete_loyalty_card: #{e}"
end
```

#### Using the delete_loyalty_card_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_loyalty_card_with_http_info(korona_account_id, loyalty_card_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_loyalty_card_with_http_info(korona_account_id, loyalty_card_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->delete_loyalty_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_loyalty_cards

> <Array<AddOrUpdateResult>> delete_loyalty_cards(korona_account_id, loyalty_card)



deletes a batch of loyalty cards

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card = [KoronaCloudClient::LoyaltyCard.new({bonus_points: 3.56, stamps: 37})] # Array<LoyaltyCard> | array of existing loyalty cards (id, number or customerId required)

begin
  
  result = api_instance.delete_loyalty_cards(korona_account_id, loyalty_card)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->delete_loyalty_cards: #{e}"
end
```

#### Using the delete_loyalty_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_loyalty_cards_with_http_info(korona_account_id, loyalty_card)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_loyalty_cards_with_http_info(korona_account_id, loyalty_card)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->delete_loyalty_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card** | [**Array&lt;LoyaltyCard&gt;**](LoyaltyCard.md) | array of existing loyalty cards (id, number or customerId required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_loyalty_card

> <LoyaltyCard> get_loyalty_card(korona_account_id, loyalty_card_id)



returns the single loyalty card

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card_id = 'loyalty_card_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_loyalty_card(korona_account_id, loyalty_card_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->get_loyalty_card: #{e}"
end
```

#### Using the get_loyalty_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltyCard>, Integer, Hash)> get_loyalty_card_with_http_info(korona_account_id, loyalty_card_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_loyalty_card_with_http_info(korona_account_id, loyalty_card_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltyCard>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->get_loyalty_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**LoyaltyCard**](LoyaltyCard.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_cards

> <ResultListLoyaltyCard> get_loyalty_cards(korona_account_id, opts)



lists all loyalty cards

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  number: 'number_example', # String | number of the related object
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  customer: 'customer_example' # String | customer id to filter by
}

begin
  
  result = api_instance.get_loyalty_cards(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->get_loyalty_cards: #{e}"
end
```

#### Using the get_loyalty_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListLoyaltyCard>, Integer, Hash)> get_loyalty_cards_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_loyalty_cards_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListLoyaltyCard>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->get_loyalty_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **customer** | **String** | customer id to filter by | [optional] |

### Return type

[**ResultListLoyaltyCard**](ResultListLoyaltyCard.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_loyalty_card

> update_loyalty_card(korona_account_id, loyalty_card_id, loyalty_card)



updates the single loyalty card; if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card_id = 'loyalty_card_id_example' # String | id of the related object (important: id should match the uuid-format)
loyalty_card = KoronaCloudClient::LoyaltyCard.new({bonus_points: 3.56, stamps: 37}) # LoyaltyCard | the object to update

begin
  
  api_instance.update_loyalty_card(korona_account_id, loyalty_card_id, loyalty_card)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->update_loyalty_card: #{e}"
end
```

#### Using the update_loyalty_card_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_loyalty_card_with_http_info(korona_account_id, loyalty_card_id, loyalty_card)

```ruby
begin
  
  data, status_code, headers = api_instance.update_loyalty_card_with_http_info(korona_account_id, loyalty_card_id, loyalty_card)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->update_loyalty_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **loyalty_card** | [**LoyaltyCard**](LoyaltyCard.md) | the object to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_cards

> <Array<AddOrUpdateResult>> update_loyalty_cards(korona_account_id, loyalty_card)



updates a batch of loyalty cards; [number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::LoyaltyCardsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
loyalty_card = [KoronaCloudClient::LoyaltyCard.new({bonus_points: 3.56, stamps: 37})] # Array<LoyaltyCard> | an array of existing loyalty cards

begin
  
  result = api_instance.update_loyalty_cards(korona_account_id, loyalty_card)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->update_loyalty_cards: #{e}"
end
```

#### Using the update_loyalty_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_loyalty_cards_with_http_info(korona_account_id, loyalty_card)

```ruby
begin
  
  data, status_code, headers = api_instance.update_loyalty_cards_with_http_info(korona_account_id, loyalty_card)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LoyaltyCardsApi->update_loyalty_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **loyalty_card** | [**Array&lt;LoyaltyCard&gt;**](LoyaltyCard.md) | an array of existing loyalty cards |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

