# KoronaCloudClient::InfoTextsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_info_text**](InfoTextsApi.md#get_info_text) | **GET** /accounts/{koronaAccountId}/infoTexts/{infoTextId} | returns the single info text
[**get_info_texts**](InfoTextsApi.md#get_info_texts) | **GET** /accounts/{koronaAccountId}/infoTexts | lists all info texts



## get_info_text

> InfoText get_info_text(korona_account_id, info_text_id)

returns the single info text

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

api_instance = KoronaCloudClient::InfoTextsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
info_text_id = 'info_text_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single info text
  result = api_instance.get_info_text(korona_account_id, info_text_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InfoTextsApi->get_info_text: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **info_text_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**InfoText**](InfoText.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_info_texts

> ResultListInfoText get_info_texts(korona_account_id, opts)

lists all info texts

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

api_instance = KoronaCloudClient::InfoTextsApi.new
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
  #lists all info texts
  result = api_instance.get_info_texts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling InfoTextsApi->get_info_texts: #{e}"
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

[**ResultListInfoText**](ResultListInfoText.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

