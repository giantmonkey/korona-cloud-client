# KoronaCloudClient::CommodityGroupsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_commodity_groups**](CommodityGroupsApi.md#add_commodity_groups) | **POST** /accounts/{koronaAccountId}/commodityGroups | adds a batch of new commodity groups
[**delete_commodity_group**](CommodityGroupsApi.md#delete_commodity_group) | **DELETE** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} | deletes the single commodity group
[**delete_commodity_groups**](CommodityGroupsApi.md#delete_commodity_groups) | **DELETE** /accounts/{koronaAccountId}/commodityGroups | deletes a batch of commodity groups
[**get_commodity_group**](CommodityGroupsApi.md#get_commodity_group) | **GET** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} | returns the single commodity group
[**get_commodity_groups**](CommodityGroupsApi.md#get_commodity_groups) | **GET** /accounts/{koronaAccountId}/commodityGroups | lists all commodity groups
[**update_commodity_group**](CommodityGroupsApi.md#update_commodity_group) | **PATCH** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupId} | updates the single commodity group
[**update_commodity_groups**](CommodityGroupsApi.md#update_commodity_groups) | **PATCH** /accounts/{koronaAccountId}/commodityGroups | updates a batch of commodity groups



## add_commodity_groups

> Array&lt;AddOrUpdateResult&gt; add_commodity_groups(korona_account_id, body, opts)

adds a batch of new commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | an array of new commodity groups
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new commodity groups
  result = api_instance.add_commodity_groups(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->add_commodity_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md)| an array of new commodity groups | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_commodity_group

> delete_commodity_group(korona_account_id, commodity_group_id)

deletes the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single commodity group
  api_instance.delete_commodity_group(korona_account_id, commodity_group_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->delete_commodity_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **commodity_group_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commodity_groups

> Array&lt;AddOrUpdateResult&gt; delete_commodity_groups(korona_account_id, body)

deletes a batch of commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | array of existing commodity groups (id or number required)

begin
  #deletes a batch of commodity groups
  result = api_instance.delete_commodity_groups(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->delete_commodity_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md)| array of existing commodity groups (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_commodity_group

> CommodityGroup get_commodity_group(korona_account_id, commodity_group_id)

returns the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single commodity group
  result = api_instance.get_commodity_group(korona_account_id, commodity_group_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->get_commodity_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **commodity_group_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**CommodityGroup**](CommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commodity_groups

> ResultListCommodityGroup get_commodity_groups(korona_account_id, opts)

lists all commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
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
  #lists all commodity groups
  result = api_instance.get_commodity_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->get_commodity_groups: #{e}"
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

[**ResultListCommodityGroup**](ResultListCommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_commodity_group

> update_commodity_group(korona_account_id, commodity_group_id, body)

updates the single commodity group

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
commodity_group_id = 'commodity_group_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::CommodityGroup.new # CommodityGroup | the properties to update of the commodity group

begin
  #updates the single commodity group
  api_instance.update_commodity_group(korona_account_id, commodity_group_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->update_commodity_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **commodity_group_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**CommodityGroup**](CommodityGroup.md)| the properties to update of the commodity group | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commodity_groups

> Array&lt;AddOrUpdateResult&gt; update_commodity_groups(korona_account_id, body)

updates a batch of commodity groups

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

api_instance = KoronaCloudClient::CommodityGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::CommodityGroup.new] # Array<CommodityGroup> | array of existing commodity groups (id or number required)

begin
  #updates a batch of commodity groups
  result = api_instance.update_commodity_groups(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CommodityGroupsApi->update_commodity_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;CommodityGroup&gt;**](CommodityGroup.md)| array of existing commodity groups (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

