# KoronaCloudClient::CustomerGroupsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customer_group**](CustomerGroupsApi.md#get_customer_group) | **GET** /accounts/{koronaAccountId}/customerGroups/{customerGroupId} | returns the single customer group
[**get_customer_groups**](CustomerGroupsApi.md#get_customer_groups) | **GET** /accounts/{koronaAccountId}/customerGroups | lists all customer groups



## get_customer_group

> CustomerGroup get_customer_group(korona_account_id, customer_group_id)

returns the single customer group

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
customer_group_id = 'customer_group_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single customer group
  result = api_instance.get_customer_group(korona_account_id, customer_group_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerGroupsApi->get_customer_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **customer_group_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**CustomerGroup**](CustomerGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_groups

> ResultListCustomerGroup get_customer_groups(korona_account_id, opts)

lists all customer groups

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

api_instance = KoronaCloudClient::CustomerGroupsApi.new
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
  #lists all customer groups
  result = api_instance.get_customer_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling CustomerGroupsApi->get_customer_groups: #{e}"
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

[**ResultListCustomerGroup**](ResultListCustomerGroup.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

