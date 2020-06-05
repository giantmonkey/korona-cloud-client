# KoronaCloudClient::SuppliersApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_supplier**](SuppliersApi.md#get_supplier) | **GET** /accounts/{koronaAccountId}/suppliers/{supplierId} | returns the single supplier
[**get_suppliers**](SuppliersApi.md#get_suppliers) | **GET** /accounts/{koronaAccountId}/suppliers | lists all suppliers



## get_supplier

> Supplier get_supplier(korona_account_id, supplier_id)

returns the single supplier

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

api_instance = KoronaCloudClient::SuppliersApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
supplier_id = 'supplier_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single supplier
  result = api_instance.get_supplier(korona_account_id, supplier_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling SuppliersApi->get_supplier: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **supplier_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Supplier**](Supplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_suppliers

> ResultListSupplier get_suppliers(korona_account_id, opts)

lists all suppliers

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

api_instance = KoronaCloudClient::SuppliersApi.new
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
  #lists all suppliers
  result = api_instance.get_suppliers(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling SuppliersApi->get_suppliers: #{e}"
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

[**ResultListSupplier**](ResultListSupplier.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

