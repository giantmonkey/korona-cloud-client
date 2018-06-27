# KoronaClient::AssortmentsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_assortment**](AssortmentsApi.md#get_assortment) | **GET** /accounts/{koronaAccountId}/assortments/{assortmentIdOrNumber} | lists the assortment
[**get_assortments**](AssortmentsApi.md#get_assortments) | **GET** /accounts/{koronaAccountId}/assortments | lists all assortments
[**get_commodity_group**](AssortmentsApi.md#get_commodity_group) | **GET** /accounts/{koronaAccountId}/commodityGroups/{commodityGroupIdOrNumber} | lists the commodity group
[**get_commodity_groups**](AssortmentsApi.md#get_commodity_groups) | **GET** /accounts/{koronaAccountId}/commodityGroups | lists all commodity groups


# **get_assortment**
> Assortment get_assortment(korona_account_id, assortment_id_or_number)

lists the assortment



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

api_instance = KoronaClient::AssortmentsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

assortment_id_or_number = "assortment_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the assortment
  result = api_instance.get_assortment(korona_account_id, assortment_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_assortment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **assortment_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Assortment**](Assortment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_assortments**
> ResultListAssortment get_assortments(korona_account_id, opts)

lists all assortments



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

api_instance = KoronaClient::AssortmentsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all assortments
  result = api_instance.get_assortments(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_assortments: #{e}"
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

[**ResultListAssortment**](ResultListAssortment.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_commodity_group**
> CommodityGroup get_commodity_group(korona_account_id, commodity_group_id_or_number)

lists the commodity group



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

api_instance = KoronaClient::AssortmentsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

commodity_group_id_or_number = "commodity_group_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the commodity group
  result = api_instance.get_commodity_group(korona_account_id, commodity_group_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_commodity_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **commodity_group_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**CommodityGroup**](CommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_commodity_groups**
> ResultListCommodityGroup get_commodity_groups(korona_account_id, opts)

lists all commodity groups



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

api_instance = KoronaClient::AssortmentsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all commodity groups
  result = api_instance.get_commodity_groups(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling AssortmentsApi->get_commodity_groups: #{e}"
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

[**ResultListCommodityGroup**](ResultListCommodityGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



