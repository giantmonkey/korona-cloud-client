# KoronaClient::EconomicZonesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_economic_zone**](EconomicZonesApi.md#get_economic_zone) | **GET** /accounts/{koronaAccountId}/economicZones/{economicZoneIdOrNumber} | lists the economic zone
[**get_economic_zones**](EconomicZonesApi.md#get_economic_zones) | **GET** /accounts/{koronaAccountId}/economicZones | lists all economic zones


# **get_economic_zone**
> EconomicZone get_economic_zone(korona_account_id, economic_zone_id_or_number)

lists the economic zone



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::EconomicZonesApi.new

korona_account_id = "korona_account_id_example" # String | the account id

economic_zone_id_or_number = "economic_zone_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the economic zone
  result = api_instance.get_economic_zone(korona_account_id, economic_zone_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->get_economic_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **economic_zone_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**EconomicZone**](EconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_economic_zones**
> ResultListEconomicZone get_economic_zones(korona_account_id, opts)

lists all economic zones



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::EconomicZonesApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all economic zones
  result = api_instance.get_economic_zones(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling EconomicZonesApi->get_economic_zones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 
 **include_deleted** | **BOOLEAN**| indicates deleted objects should be loaded or not (default: false) | [optional] 

### Return type

[**ResultListEconomicZone**](ResultListEconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



