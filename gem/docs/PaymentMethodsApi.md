# KoronaCloudClient::PaymentMethodsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} | returns the single payment method
[**get_payment_methods**](PaymentMethodsApi.md#get_payment_methods) | **GET** /accounts/{koronaAccountId}/paymentMethods | lists all payment methods



## get_payment_method

> PaymentMethod get_payment_method(korona_account_id, payment_method_id)

returns the single payment method

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single payment method
  result = api_instance.get_payment_method(korona_account_id, payment_method_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **payment_method_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_methods

> ResultListPaymentMethod get_payment_methods(korona_account_id, opts)

lists all payment methods

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

api_instance = KoronaCloudClient::PaymentMethodsApi.new
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
  #lists all payment methods
  result = api_instance.get_payment_methods(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_methods: #{e}"
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

[**ResultListPaymentMethod**](ResultListPaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

