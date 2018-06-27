# KoronaClient::ProductsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_products**](ProductsApi.md#add_products) | **POST** /accounts/{koronaAccountId}/products | adds a batch of new products
[**delete_product**](ProductsApi.md#delete_product) | **DELETE** /accounts/{koronaAccountId}/products/{productIdOrNumber} | deletes the product
[**get_product**](ProductsApi.md#get_product) | **GET** /accounts/{koronaAccountId}/products/{productIdOrNumber} | lists the product
[**get_product_stocks**](ProductsApi.md#get_product_stocks) | **GET** /accounts/{koronaAccountId}/products/{productIdOrNumber}/stocks | lists the product stocks in different warehouses (KORONA.retail required)
[**get_products**](ProductsApi.md#get_products) | **GET** /accounts/{koronaAccountId}/products | lists all products
[**update_product**](ProductsApi.md#update_product) | **PATCH** /accounts/{koronaAccountId}/products/{productIdOrNumber} | changes the product
[**update_products**](ProductsApi.md#update_products) | **PATCH** /accounts/{koronaAccountId}/products | changes a batch of products


# **add_products**
> Array&lt;AddOrUpdateResult&gt; add_products(korona_account_id, body)

adds a batch of new products



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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::Product.new] # Array<Product> | a array of new products


begin
  #adds a batch of new products
  result = api_instance.add_products(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->add_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;Product&gt;**](Product.md)| a array of new products | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_product**
> delete_product(korona_account_id, product_id_or_number)

deletes the product



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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #deletes the product
  api_instance.delete_product(korona_account_id, product_id_or_number)
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->delete_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product**
> Product get_product(korona_account_id, product_id_or_number)

lists the product



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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)


begin
  #lists the product
  result = api_instance.get_product(korona_account_id, product_id_or_number)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 

### Return type

[**Product**](Product.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product_stocks**
> ResultListProductStock get_product_stocks(korona_account_id, product_id_or_number, opts)

lists the product stocks in different warehouses (KORONA.retail required)



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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  #lists the product stocks in different warehouses (KORONA.retail required)
  result = api_instance.get_product_stocks(korona_account_id, product_id_or_number, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product_stocks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **page** | **Integer**| number of the page to fetch | [optional] 
 **size** | **Integer**| amount of objects to return per page | [optional] 
 **sort** | **String**| attribute to sort by (multiple separated by comma; max. 5) | [optional] 
 **revision** | **Integer**| last revision number, objects with a greater revision than this will be returned | [optional] 

### Return type

[**ResultListProductStock**](ResultListProductStock.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_products**
> ResultListProduct get_products(korona_account_id, opts)

lists all products



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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: "sort_example", # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # BOOLEAN | indicates deleted objects should be loaded or not (default: false)
  product_codes: "product_codes_example", # String | at least one product code to filter by (multiple separated by comma; max. 10)
  commodity_group: "commodity_group_example", # String | commodity group id or number to filter by
  assortment: "assortment_example", # String | assortment id or number to filter by
  tag: "tag_example" # String | tag id or number to filter by
}

begin
  #lists all products
  result = api_instance.get_products(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->get_products: #{e}"
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
 **product_codes** | **String**| at least one product code to filter by (multiple separated by comma; max. 10) | [optional] 
 **commodity_group** | **String**| commodity group id or number to filter by | [optional] 
 **assortment** | **String**| assortment id or number to filter by | [optional] 
 **tag** | **String**| tag id or number to filter by | [optional] 

### Return type

[**ResultListProduct**](ResultListProduct.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product**
> update_product(korona_account_id, product_id_or_number, body)

changes the product

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

product_id_or_number = "product_id_or_number_example" # String | id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)

body = KoronaClient::Product.new # Product | the properties to update of the product


begin
  #changes the product
  api_instance.update_product(korona_account_id, product_id_or_number, body)
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->update_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **product_id_or_number** | **String**| id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number) | 
 **body** | [**Product**](Product.md)| the properties to update of the product | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_products**
> Array&lt;AddOrUpdateResult&gt; update_products(korona_account_id, body)

changes a batch of products

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaClient::ProductsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

body = [KoronaClient::Product.new] # Array<Product> | a array of existing products


begin
  #changes a batch of products
  result = api_instance.update_products(korona_account_id, body)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling ProductsApi->update_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **body** | [**Array&lt;Product&gt;**](Product.md)| a array of existing products | 

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



