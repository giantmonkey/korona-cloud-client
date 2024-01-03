# KoronaCloudClient::ImagesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_images**](ImagesApi.md#add_images) | **POST** /accounts/{koronaAccountId}/images |  |
| [**delete_image**](ImagesApi.md#delete_image) | **DELETE** /accounts/{koronaAccountId}/images/{imageId} |  |
| [**delete_images**](ImagesApi.md#delete_images) | **DELETE** /accounts/{koronaAccountId}/images |  |
| [**get_image**](ImagesApi.md#get_image) | **GET** /accounts/{koronaAccountId}/images/{imageId} |  |
| [**get_images**](ImagesApi.md#get_images) | **GET** /accounts/{koronaAccountId}/images |  |
| [**update_image**](ImagesApi.md#update_image) | **PATCH** /accounts/{koronaAccountId}/images/{imageId} |  |
| [**update_images**](ImagesApi.md#update_images) | **PATCH** /accounts/{koronaAccountId}/images |  |


## add_images

> <Array<AddOrUpdateResult>> add_images(korona_account_id, image, opts)



adds new images

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image = [KoronaCloudClient::Image.new] # Array<Image> | list of properties of new images
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  processing: true, # Boolean | whether PRINTER images should be processed with Dithering
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_images(korona_account_id, image, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->add_images: #{e}"
end
```

#### Using the add_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_images_with_http_info(korona_account_id, image, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_images_with_http_info(korona_account_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->add_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image** | [**Array&lt;Image&gt;**](Image.md) | list of properties of new images |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **processing** | **Boolean** | whether PRINTER images should be processed with Dithering | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_image

> delete_image(korona_account_id, image_id)



deletes the single image

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image_id = 'image_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_image(korona_account_id, image_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->delete_image: #{e}"
end
```

#### Using the delete_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_image_with_http_info(korona_account_id, image_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_image_with_http_info(korona_account_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->delete_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_images

> <Array<AddOrUpdateResult>> delete_images(korona_account_id, image)



deletes a batch of images

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image = [KoronaCloudClient::Image.new] # Array<Image> | array of existing images (id or number required)

begin
  
  result = api_instance.delete_images(korona_account_id, image)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->delete_images: #{e}"
end
```

#### Using the delete_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_images_with_http_info(korona_account_id, image)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_images_with_http_info(korona_account_id, image)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->delete_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image** | [**Array&lt;Image&gt;**](Image.md) | array of existing images (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_image

> String get_image(korona_account_id, image_id, opts)



displays the image or returns properties as JSON

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image_id = 'image_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  accept: 'accept_example' # String | the accepted content type for the response
}

begin
  
  result = api_instance.get_image(korona_account_id, image_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->get_image: #{e}"
end
```

#### Using the get_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_image_with_http_info(korona_account_id, image_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_image_with_http_info(korona_account_id, image_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->get_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **accept** | **String** | the accepted content type for the response | [optional] |

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png, image/jpg, application/json


## get_images

> <ResultListImage> get_images(korona_account_id, opts)



returns a list of image properties

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example', # String | number of the related object
  export_image_data: true # Boolean | export image data
}

begin
  
  result = api_instance.get_images(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->get_images: #{e}"
end
```

#### Using the get_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListImage>, Integer, Hash)> get_images_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_images_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListImage>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->get_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |
| **export_image_data** | **Boolean** | export image data | [optional] |

### Return type

[**ResultListImage**](ResultListImage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_image

> update_image(korona_account_id, image_id, image, opts)



updates a single image

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image_id = 'image_id_example' # String | id of the related object (important: id should match the uuid-format)
image = KoronaCloudClient::Image.new # Image | the properties to update the image
opts = {
  processing: true # Boolean | whether PRINTER images should be processed with Dithering
}

begin
  
  api_instance.update_image(korona_account_id, image_id, image, opts)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->update_image: #{e}"
end
```

#### Using the update_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_image_with_http_info(korona_account_id, image_id, image, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_image_with_http_info(korona_account_id, image_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->update_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **image** | [**Image**](Image.md) | the properties to update the image |  |
| **processing** | **Boolean** | whether PRINTER images should be processed with Dithering | [optional] |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_images

> <Array<AddOrUpdateResult>> update_images(korona_account_id, image, opts)



updates an array of existing images

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

api_instance = KoronaCloudClient::ImagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
image = [KoronaCloudClient::Image.new] # Array<Image> | an array of existing images
opts = {
  processing: true # Boolean | whether PRINTER images should be processed with Dithering
}

begin
  
  result = api_instance.update_images(korona_account_id, image, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->update_images: #{e}"
end
```

#### Using the update_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_images_with_http_info(korona_account_id, image, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_images_with_http_info(korona_account_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->update_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **image** | [**Array&lt;Image&gt;**](Image.md) | an array of existing images |  |
| **processing** | **Boolean** | whether PRINTER images should be processed with Dithering | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

