# KoronaCloudClient::EconomicZonesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_economic_zones**](EconomicZonesApi.md#add_economic_zones) | **POST** /accounts/{koronaAccountId}/economicZones | adds a batch of new economic zones
[**delete_economic_zones**](EconomicZonesApi.md#delete_economic_zones) | **DELETE** /accounts/{koronaAccountId}/economicZones | deletes a batch of economic zones
[**get_economic_zone**](EconomicZonesApi.md#get_economic_zone) | **GET** /accounts/{koronaAccountId}/economicZones/{economicZoneId} | returns the single economic zone
[**get_economic_zones**](EconomicZonesApi.md#get_economic_zones) | **GET** /accounts/{koronaAccountId}/economicZones | lists all economic zones
[**update_economic_zones**](EconomicZonesApi.md#update_economic_zones) | **PATCH** /accounts/{koronaAccountId}/economicZones | updates a batch of economic zones



## add_economic_zones

> Array&lt;AddOrUpdateResult&gt; add_economic_zones(korona_account_id, body, opts)

adds a batch of new economic zones

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

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of new economic zones
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new economic zones
  result = api_instance.add_economic_zones(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->add_economic_zones: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md)| array of new economic zones | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_economic_zones

> Array&lt;AddOrUpdateResult&gt; delete_economic_zones(korona_account_id, body)

deletes a batch of economic zones

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

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of existing economic zones (id or number required)

begin
  #deletes a batch of economic zones
  result = api_instance.delete_economic_zones(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->delete_economic_zones: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md)| array of existing economic zones (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_economic_zone

> EconomicZone get_economic_zone(korona_account_id, economic_zone_id)

returns the single economic zone

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

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
economic_zone_id = 'economic_zone_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single economic zone
  result = api_instance.get_economic_zone(korona_account_id, economic_zone_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->get_economic_zone: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **economic_zone_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**EconomicZone**](EconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_economic_zones

> ResultListEconomicZone get_economic_zones(korona_account_id, opts)

lists all economic zones

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

api_instance = KoronaCloudClient::EconomicZonesApi.new
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
  #lists all economic zones
  result = api_instance.get_economic_zones(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->get_economic_zones: #{e}"
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

[**ResultListEconomicZone**](ResultListEconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_economic_zones

> Array&lt;AddOrUpdateResult&gt; update_economic_zones(korona_account_id, body)

updates a batch of economic zones

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

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of existing economic zones (id or number required)

begin
  #updates a batch of economic zones
  result = api_instance.update_economic_zones(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->update_economic_zones: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md)| array of existing economic zones (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

