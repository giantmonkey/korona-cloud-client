# KoronaCloudClient::CouponsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_coupon**](CouponsApi.md#get_coupon) | **GET** /accounts/{koronaAccountId}/coupons/{couponId} |  |
| [**get_coupons**](CouponsApi.md#get_coupons) | **GET** /accounts/{koronaAccountId}/coupons |  |


## get_coupon

> <Coupon> get_coupon(korona_account_id, coupon_id)



returns the single coupon

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

api_instance = KoronaCloudClient::CouponsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
coupon_id = 'coupon_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_coupon(korona_account_id, coupon_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CouponsApi->get_coupon: #{e}"
end
```

#### Using the get_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Coupon>, Integer, Hash)> get_coupon_with_http_info(korona_account_id, coupon_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_coupon_with_http_info(korona_account_id, coupon_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Coupon>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CouponsApi->get_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **coupon_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Coupon**](Coupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_coupons

> <ResultListCoupon> get_coupons(korona_account_id, opts)



lists all coupons

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

api_instance = KoronaCloudClient::CouponsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  number: 'number_example' # String | number of the related object
}

begin
  
  result = api_instance.get_coupons(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CouponsApi->get_coupons: #{e}"
end
```

#### Using the get_coupons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCoupon>, Integer, Hash)> get_coupons_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_coupons_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCoupon>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CouponsApi->get_coupons_with_http_info: #{e}"
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
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListCoupon**](ResultListCoupon.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

