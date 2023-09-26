# KoronaCloudClient::KoronaAccountApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_korona_account**](KoronaAccountApi.md#get_korona_account) | **GET** /accounts/{koronaAccountId} |  |


## get_korona_account

> <KoronaAccount> get_korona_account(korona_account_id)



returns the single korona account

### Examples

```ruby
require 'time'
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
  
  result = api_instance.get_korona_account(korona_account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling KoronaAccountApi->get_korona_account: #{e}"
end
```

#### Using the get_korona_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KoronaAccount>, Integer, Hash)> get_korona_account_with_http_info(korona_account_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_korona_account_with_http_info(korona_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KoronaAccount>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling KoronaAccountApi->get_korona_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |

### Return type

[**KoronaAccount**](KoronaAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

