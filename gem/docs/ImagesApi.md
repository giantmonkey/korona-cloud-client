# KoronaCloudClient::ImagesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_image**](ImagesApi.md#get_image) | **GET** /accounts/{koronaAccountId}/images/{imageId} | displays the image |


## get_image

> String get_image(korona_account_id, image_id)

displays the image

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
  # displays the image
  result = api_instance.get_image(korona_account_id, image_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ImagesApi->get_image: #{e}"
end
```

#### Using the get_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_image_with_http_info(korona_account_id, image_id)

```ruby
begin
  # displays the image
  data, status_code, headers = api_instance.get_image_with_http_info(korona_account_id, image_id)
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

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png, image/jpg

