# KoronaCloudClient::ProductsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_products**](ProductsApi.md#add_products) | **POST** /accounts/{koronaAccountId}/products | adds a batch of new products
[**delete_product**](ProductsApi.md#delete_product) | **DELETE** /accounts/{koronaAccountId}/products/{productId} | deletes the single product
[**delete_products**](ProductsApi.md#delete_products) | **DELETE** /accounts/{koronaAccountId}/products | deletes a batch of products
[**get_product**](ProductsApi.md#get_product) | **GET** /accounts/{koronaAccountId}/products/{productId} | returns the single product
[**get_product_stocks**](ProductsApi.md#get_product_stocks) | **GET** /accounts/{koronaAccountId}/products/{productId}/stocks | lists the product stocks in different warehouses (KORONA.retail required)
[**get_products**](ProductsApi.md#get_products) | **GET** /accounts/{koronaAccountId}/products | lists all products
[**update_product**](ProductsApi.md#update_product) | **PATCH** /accounts/{koronaAccountId}/products/{productId} | updates the single product
[**update_products**](ProductsApi.md#update_products) | **PATCH** /accounts/{koronaAccountId}/products | updates a batch of products



## add_products

> Array&lt;AddOrUpdateResult&gt; add_products(korona_account_id, body, opts)

adds a batch of new products

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Product.new] # Array<Product> | array of new products
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  #adds a batch of new products
  result = api_instance.add_products(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->add_products: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Product&gt;**](Product.md)| array of new products | 
 **upsert** | **Boolean**| when set to true, updates the object instead of generating a already-exists-error | [optional] 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product

> delete_product(korona_account_id, product_id)

deletes the single product

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #deletes the single product
  api_instance.delete_product(korona_account_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->delete_product: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_products

> Array&lt;AddOrUpdateResult&gt; delete_products(korona_account_id, body)

deletes a batch of products

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Product.new] # Array<Product> | array of existing products (id or number required)

begin
  #deletes a batch of products
  result = api_instance.delete_products(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->delete_products: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Product&gt;**](Product.md)| array of existing products (id or number required) | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_product

> Product get_product(korona_account_id, product_id)

returns the single product

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  #returns the single product
  result = api_instance.get_product(korona_account_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 

### Return type

[**Product**](Product.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_stocks

> ResultListProductStock get_product_stocks(korona_account_id, product_id, opts)

lists the product stocks in different warehouses (KORONA.retail required)

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists the product stocks in different warehouses (KORONA.retail required)
  result = api_instance.get_product_stocks(korona_account_id, product_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product_stocks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListProductStock**](ResultListProductStock.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> ResultListProduct get_products(korona_account_id, opts)

lists all products

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 56, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  product_codes: 'product_codes_example', # String | at least one product code to filter by (multiple separated by comma; max. 10)
  commodity_group: 'commodity_group_example', # String | commodity group id to filter by
  assortment: 'assortment_example', # String | assortment id to filter by
  tag: 'tag_example', # String | tag id to filter by
  number: 'number_example' # String | number of the related object
}

begin
  #lists all products
  result = api_instance.get_products(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->get_products: #{e}"
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
 **product_codes** | **String**| at least one product code to filter by (multiple separated by comma; max. 10) | [optional] 
 **commodity_group** | **String**| commodity group id to filter by | [optional] 
 **assortment** | **String**| assortment id to filter by | [optional] 
 **tag** | **String**| tag id to filter by | [optional] 
 **number** | **String**| number of the related object | [optional] 

### Return type

[**ResultListProduct**](ResultListProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> update_product(korona_account_id, product_id, body)

updates the single product

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Product.new # Product | the properties to update of the product

begin
  #updates the single product
  api_instance.update_product(korona_account_id, product_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->update_product: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **product_id** | **String**| id of the related object (important: id should match the uuid-format) | 
 **body** | [**Product**](Product.md)| the properties to update of the product | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_products

> Array&lt;AddOrUpdateResult&gt; update_products(korona_account_id, body)

updates a batch of products

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::ProductsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Product.new] # Array<Product> | an array of existing products

begin
  #updates a batch of products
  result = api_instance.update_products(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Exception when calling ProductsApi->update_products: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| account id of the KORONA.cloud account | 
 **body** | [**Array&lt;Product&gt;**](Product.md)| an array of existing products | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

