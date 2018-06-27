# KoronaClient::TagsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tag**](TagsApi.md#get_tag) | **GET** /accounts/{koronaAccountId}/tags/{tagId} | lists the info text
[**get_tags**](TagsApi.md#get_tags) | **GET** /accounts/{koronaAccountId}/tags | lists all info texts


# **get_tag**
> Tag get_tag(korona_account_id, tag_id)

lists the info text



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

api_instance = KoronaClient::TagsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

tag_id = "tag_id_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the info text
  result = api_instance.get_tag(korona_account_id, tag_id)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TagsApi->get_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **tag_id** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Tag**](Tag.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tags**
> ResultListTag get_tags(korona_account_id, opts)

lists all info texts



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

api_instance = KoronaClient::TagsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all info texts
  result = api_instance.get_tags(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling TagsApi->get_tags: #{e}"
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

[**ResultListTag**](ResultListTag.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



