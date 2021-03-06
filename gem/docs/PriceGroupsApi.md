# KoronaCloudClient::PriceGroupsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_price_groups**](PriceGroupsApi.md#add_price_groups) | **POST** /accounts/{koronaAccountId}/priceGroups | adds a batch of new price groups
[**delete_price_groups**](PriceGroupsApi.md#delete_price_groups) | **DELETE** /accounts/{koronaAccountId}/priceGroups | deletes a batch of price groups
[**get_price_group**](PriceGroupsApi.md#get_price_group) | **GET** /accounts/{koronaAccountId}/priceGroups/{priceGroupId} | returns the single price group
[**get_price_groups**](PriceGroupsApi.md#get_price_groups) | **GET** /accounts/{koronaAccountId}/priceGroups | lists all price groups
[**update_price_groups**](PriceGroupsApi.md#update_price_groups) | **PATCH** /accounts/{koronaAccountId}/priceGroups | updates a batch of price groups



## add_price_groups

> Array&lt;AddOrUpdateResult&gt; add_price_groups(korona_account_id, body, opts)

adds a batch of new price groups

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

api_instance = KoronaCloudClient::PriceGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PriceGroup.new] # Array<PriceGroup> | array of new price groups
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new price groups
  result = api_instance.add_price_groups(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->add_price_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;PriceGroup&gt;**](PriceGroup.md)| array of new price groups | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_price_groups

> Array&lt;AddOrUpdateResult&gt; delete_price_groups(korona_account_id, body)

deletes a batch of price groups

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

api_instance = KoronaCloudClient::PriceGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PriceGroup.new] # Array<PriceGroup> | array of existing price groups (id or number required)

begin
  #deletes a batch of price groups
  result = api_instance.delete_price_groups(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->delete_price_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;PriceGroup&gt;**](PriceGroup.md)| array of existing price groups (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price_group

> PriceGroup get_price_group(korona_account_id, price_group_id)

returns the single price group

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

api_instance = KoronaCloudClient::PriceGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
price_group_id = 'price_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single price group
  result = api_instance.get_price_group(korona_account_id, price_group_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->get_price_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **price_group_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**PriceGroup**](PriceGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_price_groups

> ResultListPriceGroup get_price_groups(korona_account_id, opts)

lists all price groups

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

api_instance = KoronaCloudClient::PriceGroupsApi.new
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
  #lists all price groups
  result = api_instance.get_price_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->get_price_groups: #{e}"
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

[**ResultListPriceGroup**](ResultListPriceGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_price_groups

> Array&lt;AddOrUpdateResult&gt; update_price_groups(korona_account_id, body)

updates a batch of price groups

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

api_instance = KoronaCloudClient::PriceGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PriceGroup.new] # Array<PriceGroup> | array of existing price groups (id or number required)

begin
  #updates a batch of price groups
  result = api_instance.update_price_groups(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->update_price_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;PriceGroup&gt;**](PriceGroup.md)| array of existing price groups (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

