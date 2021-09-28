# KoronaCloudClient::AdditionalReceiptInfoTypesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_additional_receipt_info_type**](AdditionalReceiptInfoTypesApi.md#get_additional_receipt_info_type) | **GET** /accounts/{koronaAccountId}/additionalReceiptInfoTypes/{additionalReceiptInfoTypeId} | returns the single additional receipt info type |
| [**get_additional_receipt_info_types**](AdditionalReceiptInfoTypesApi.md#get_additional_receipt_info_types) | **GET** /accounts/{koronaAccountId}/additionalReceiptInfoTypes | lists all additional receipt info types |


## get_additional_receipt_info_type

> <AdditionalReceiptInfoType> get_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)

returns the single additional receipt info type

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
additional_receipt_info_type_id = 'additional_receipt_info_type_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single additional receipt info type
  result = api_instance.get_additional_receipt_info_type(korona_account_id, additional_receipt_info_type_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_type: #{e}"
end
```

#### Using the get_additional_receipt_info_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdditionalReceiptInfoType>, Integer, Hash)> get_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)

```ruby
begin
  # returns the single additional receipt info type
  data, status_code, headers = api_instance.get_additional_receipt_info_type_with_http_info(korona_account_id, additional_receipt_info_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdditionalReceiptInfoType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **additional_receipt_info_type_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**AdditionalReceiptInfoType**](AdditionalReceiptInfoType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_additional_receipt_info_types

> <ResultListAdditionalReceiptInfoType> get_additional_receipt_info_types(korona_account_id, opts)

lists all additional receipt info types

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

api_instance = KoronaCloudClient::AdditionalReceiptInfoTypesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all additional receipt info types
  result = api_instance.get_additional_receipt_info_types(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_types: #{e}"
end
```

#### Using the get_additional_receipt_info_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListAdditionalReceiptInfoType>, Integer, Hash)> get_additional_receipt_info_types_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all additional receipt info types
  data, status_code, headers = api_instance.get_additional_receipt_info_types_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListAdditionalReceiptInfoType>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling AdditionalReceiptInfoTypesApi->get_additional_receipt_info_types_with_http_info: #{e}"
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

### Return type

[**ResultListAdditionalReceiptInfoType**](ResultListAdditionalReceiptInfoType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

