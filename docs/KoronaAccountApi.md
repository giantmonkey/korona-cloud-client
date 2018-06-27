# KoronaClient::KoronaAccountApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_korona_account**](KoronaAccountApi.md#get_korona_account) | **GET** /accounts/{koronaAccountId} | lists the korona account


# **get_korona_account**
> KoronaAccount get_korona_account(korona_account_id)

lists the korona account



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

api_instance = KoronaClient::KoronaAccountApi.new

korona_account_id = "korona_account_id_example" # String | the account id


begin
  #lists the korona account
  result = api_instance.get_korona_account(korona_account_id)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling KoronaAccountApi->get_korona_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 

### Return type

[**KoronaAccount**](KoronaAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



