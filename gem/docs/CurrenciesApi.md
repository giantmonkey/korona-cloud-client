# KoronaCloudClient::CurrenciesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_currencies**](CurrenciesApi.md#add_currencies) | **POST** /accounts/{koronaAccountId}/currencies | adds a batch of new currencies
[**delete_currencies**](CurrenciesApi.md#delete_currencies) | **DELETE** /accounts/{koronaAccountId}/currencies | deletes a batch of currencies
[**get_currencies**](CurrenciesApi.md#get_currencies) | **GET** /accounts/{koronaAccountId}/currencies | lists all currencies
[**get_currency**](CurrenciesApi.md#get_currency) | **GET** /accounts/{koronaAccountId}/currencies/{currencyId} | returns the single currency
[**update_currencies**](CurrenciesApi.md#update_currencies) | **PATCH** /accounts/{koronaAccountId}/currencies | updates a batch of currencies



## add_currencies

> Array&lt;AddOrUpdateResult&gt; add_currencies(korona_account_id, body, opts)

adds a batch of new currencies

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Currency.new] # Array<Currency> | array of new currencies
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new currencies
  result = api_instance.add_currencies(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CurrenciesApi->add_currencies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Currency&gt;**](Currency.md)| array of new currencies | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_currencies

> Array&lt;AddOrUpdateResult&gt; delete_currencies(korona_account_id, body)

deletes a batch of currencies

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Currency.new] # Array<Currency> | array of existing currencies (id or number required)

begin
  #deletes a batch of currencies
  result = api_instance.delete_currencies(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CurrenciesApi->delete_currencies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Currency&gt;**](Currency.md)| array of existing currencies (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_currencies

> ResultListCurrency get_currencies(korona_account_id, opts)

lists all currencies

### Example

```ruby
# load the gem
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
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  #lists all currencies
  result = api_instance.get_currencies(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CurrenciesApi->get_currencies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **Boolean**| indicates deleted objects should be loaded or not (default: false) | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListCurrency**](ResultListCurrency.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_currency

> Currency get_currency(korona_account_id, currency_id)

returns the single currency

### Example

```ruby
# load the gem
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
  #returns the single currency
  result = api_instance.get_currency(korona_account_id, currency_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CurrenciesApi->get_currency: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **currency_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Currency**](Currency.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_currencies

> Array&lt;AddOrUpdateResult&gt; update_currencies(korona_account_id, body)

updates a batch of currencies

### Example

```ruby
# load the gem
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::CurrenciesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Currency.new] # Array<Currency> | array of existing currencies (id or number required)

begin
  #updates a batch of currencies
  result = api_instance.update_currencies(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CurrenciesApi->update_currencies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Currency&gt;**](Currency.md)| array of existing currencies (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

