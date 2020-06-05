# KoronaCloudClient::EconomicZonesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_economic_zone**](EconomicZonesApi.md#get_economic_zone) | **GET** /accounts/{koronaAccountId}/economicZones/{economicZoneId} | returns the single economic zone
[**get_economic_zones**](EconomicZonesApi.md#get_economic_zones) | **GET** /accounts/{koronaAccountId}/economicZones | lists all economic zones



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

