# KoronaClient::PriceGroupsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_price_group**](PriceGroupsApi.md#get_price_group) | **GET** /accounts/{koronaAccountId}/priceGroups/{priceGroupIdOrNumber} | lists the price group
[**get_price_groups**](PriceGroupsApi.md#get_price_groups) | **GET** /accounts/{koronaAccountId}/priceGroups | lists all price groups


# **get_price_group**
> PriceGroup get_price_group(korona_account_id, price_group_id_or_number)

lists the price group



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

api_instance = KoronaClient::PriceGroupsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

price_group_id_or_number = "price_group_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the price group
  result = api_instance.get_price_group(korona_account_id, price_group_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->get_price_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **price_group_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**PriceGroup**](PriceGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_price_groups**
> ResultListPriceGroup get_price_groups(korona_account_id, opts)

lists all price groups



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

api_instance = KoronaClient::PriceGroupsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all price groups
  result = api_instance.get_price_groups(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling PriceGroupsApi->get_price_groups: #{e}"
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

[**ResultListPriceGroup**](ResultListPriceGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



