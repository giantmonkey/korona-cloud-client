# KoronaClient::SalesTaxesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sales_tax**](SalesTaxesApi.md#get_sales_tax) | **GET** /accounts/{koronaAccountId}/salesTaxes/{salesTaxIdOrNumber} | lists the sales tax
[**get_sales_taxes**](SalesTaxesApi.md#get_sales_taxes) | **GET** /accounts/{koronaAccountId}/salesTaxes | lists all sales taxes


# **get_sales_tax**
> SalesTax get_sales_tax(korona_account_id, sales_tax_id_or_number)

lists the sales tax



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

api_instance = KoronaClient::SalesTaxesApi.new

korona_account_id = "korona_account_id_example" # String | the account id

sales_tax_id_or_number = "sales_tax_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the sales tax
  result = api_instance.get_sales_tax(korona_account_id, sales_tax_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling SalesTaxesApi->get_sales_tax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **sales_tax_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**SalesTax**](SalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sales_taxes**
> ResultListSalesTax get_sales_taxes(korona_account_id, opts)

lists all sales taxes



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

api_instance = KoronaClient::SalesTaxesApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
}

begin
  #lists all sales taxes
  result = api_instance.get_sales_taxes(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling SalesTaxesApi->get_sales_taxes: #{e}"
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

[**ResultListSalesTax**](ResultListSalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



