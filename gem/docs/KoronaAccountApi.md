# KoronaCloudClient::KoronaAccountApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_korona_account**](KoronaAccountApi.md#get_korona_account) | **GET** /accounts/{koronaAccountId} | returns the single korona account



## get_korona_account

> KoronaAccount get_korona_account(korona_account_id)

returns the single korona account

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

api_instance = KoronaCloudClient::KoronaAccountApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account

begin
  #returns the single korona account
  result = api_instance.get_korona_account(korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling KoronaAccountApi->get_korona_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 

### Return type

[**KoronaAccount**](KoronaAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

