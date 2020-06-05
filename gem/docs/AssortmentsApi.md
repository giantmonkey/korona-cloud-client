# KoronaCloudClient::AssortmentsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_assortments**](AssortmentsApi.md#add_assortments) | **POST** /accounts/{koronaAccountId}/assortments | adds a batch of new assortments
[**delete_assortment**](AssortmentsApi.md#delete_assortment) | **DELETE** /accounts/{koronaAccountId}/assortments/{assortmentId} | deletes the single assortment
[**delete_assortments**](AssortmentsApi.md#delete_assortments) | **DELETE** /accounts/{koronaAccountId}/assortments | deletes a batch of assortments
[**get_assortment**](AssortmentsApi.md#get_assortment) | **GET** /accounts/{koronaAccountId}/assortments/{assortmentId} | returns the single assortment
[**get_assortments**](AssortmentsApi.md#get_assortments) | **GET** /accounts/{koronaAccountId}/assortments | lists all assortments
[**update_assortment**](AssortmentsApi.md#update_assortment) | **PATCH** /accounts/{koronaAccountId}/assortments/{assortmentId} | updates the single assortment
[**update_assortments**](AssortmentsApi.md#update_assortments) | **PATCH** /accounts/{koronaAccountId}/assortments | updates a batch of assortments



## add_assortments

> Array&lt;AddOrUpdateResult&gt; add_assortments(korona_account_id, body, opts)

adds a batch of new assortments

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Assortment.new] # Array<Assortment> | array of new assortments
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new assortments
  result = api_instance.add_assortments(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->add_assortments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Assortment&gt;**](Assortment.md)| array of new assortments | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_assortment

> delete_assortment(korona_account_id, assortment_id)

deletes the single assortment

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
assortment_id = 'assortment_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single assortment
  api_instance.delete_assortment(korona_account_id, assortment_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->delete_assortment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **assortment_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_assortments

> Array&lt;AddOrUpdateResult&gt; delete_assortments(korona_account_id, body)

deletes a batch of assortments

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Assortment.new] # Array<Assortment> | array of existing assortments (id or number required)

begin
  #deletes a batch of assortments
  result = api_instance.delete_assortments(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->delete_assortments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Assortment&gt;**](Assortment.md)| array of existing assortments (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_assortment

> Assortment get_assortment(korona_account_id, assortment_id)

returns the single assortment

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
assortment_id = 'assortment_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single assortment
  result = api_instance.get_assortment(korona_account_id, assortment_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_assortment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **assortment_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Assortment**](Assortment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assortments

> ResultListAssortment get_assortments(korona_account_id, opts)

lists all assortments

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

api_instance = KoronaCloudClient::AssortmentsApi.new
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
  #lists all assortments
  result = api_instance.get_assortments(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_assortments: #{e}"
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

[**ResultListAssortment**](ResultListAssortment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_assortment

> update_assortment(korona_account_id, assortment_id, body)

updates the single assortment

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
assortment_id = 'assortment_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Assortment.new # Assortment | the properties to update of the assortment

begin
  #updates the single assortment
  api_instance.update_assortment(korona_account_id, assortment_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->update_assortment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **assortment_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Assortment**](Assortment.md)| the properties to update of the assortment | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_assortments

> Array&lt;AddOrUpdateResult&gt; update_assortments(korona_account_id, body)

updates a batch of assortments

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

api_instance = KoronaCloudClient::AssortmentsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Assortment.new] # Array<Assortment> | array of existing assortments (id or number required)

begin
  #updates a batch of assortments
  result = api_instance.update_assortments(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AssortmentsApi->update_assortments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Assortment&gt;**](Assortment.md)| array of existing assortments (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

