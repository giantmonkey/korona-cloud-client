# KoronaCloudClient::SalesTaxesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sales_tax**](SalesTaxesApi.md#get_sales_tax) | **GET** /accounts/{koronaAccountId}/salesTaxes/{salesTaxId} | returns the single sales tax
[**get_sales_taxes**](SalesTaxesApi.md#get_sales_taxes) | **GET** /accounts/{koronaAccountId}/salesTaxes | lists all sales taxes



## get_sales_tax

> SalesTax get_sales_tax(korona_account_id, sales_tax_id)

returns the single sales tax

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sales_tax_id = 'sales_tax_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single sales tax
  result = api_instance.get_sales_tax(korona_account_id, sales_tax_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling SalesTaxesApi->get_sales_tax: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **sales_tax_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**SalesTax**](SalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sales_taxes

> ResultListSalesTax get_sales_taxes(korona_account_id, opts)

lists all sales taxes

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
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
  #lists all sales taxes
  result = api_instance.get_sales_taxes(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling SalesTaxesApi->get_sales_taxes: #{e}"
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

[**ResultListSalesTax**](ResultListSalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

