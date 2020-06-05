# KoronaCloudClient::AccountsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{koronaAccountId}/accounts/{accountId} | returns the single account
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts/{koronaAccountId}/accounts | lists all accounts



## get_account

> Account get_account(korona_account_id, account_id)

returns the single account

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
account_id = 'account_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single account
  result = api_instance.get_account(korona_account_id, account_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **account_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Account**](Account.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> ResultListAccount get_accounts(korona_account_id, opts)

lists all accounts

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

api_instance = KoronaCloudClient::AccountsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # Boolean | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all accounts
  result = api_instance.get_accounts(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
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

### Return type

[**ResultListAccount**](ResultListAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

