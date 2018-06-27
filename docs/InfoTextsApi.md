# KoronaClient::InfoTextsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_info_text**](InfoTextsApi.md#get_info_text) | **GET** /accounts/{koronaAccountId}/infoTexts/{infoTextIdOrNumber} | lists the info text
[**get_info_texts**](InfoTextsApi.md#get_info_texts) | **GET** /accounts/{koronaAccountId}/infoTexts | lists all info texts


# **get_info_text**
> InfoText get_info_text(korona_account_id, info_text_id_or_number)

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

api_instance = KoronaClient::InfoTextsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

info_text_id_or_number = "info_text_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the info text
  result = api_instance.get_info_text(korona_account_id, info_text_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InfoTextsApi->get_info_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **info_text_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**InfoText**](InfoText.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_info_texts**
> ResultListInfoText get_info_texts(korona_account_id, opts)

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

api_instance = KoronaClient::InfoTextsApi.new

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
  result = api_instance.get_info_texts(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling InfoTextsApi->get_info_texts: #{e}"
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

[**ResultListInfoText**](ResultListInfoText.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



