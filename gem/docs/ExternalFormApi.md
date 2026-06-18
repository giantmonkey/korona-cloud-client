# KoronaCloudClient::ExternalFormApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_external_forms**](ExternalFormApi.md#add_external_forms) | **POST** /accounts/{koronaAccountId}/externalForms |  |
| [**delete_external_form**](ExternalFormApi.md#delete_external_form) | **DELETE** /accounts/{koronaAccountId}/externalForms/{externalFormId} |  |
| [**delete_external_forms**](ExternalFormApi.md#delete_external_forms) | **DELETE** /accounts/{koronaAccountId}/externalForms |  |
| [**get_external_form**](ExternalFormApi.md#get_external_form) | **GET** /accounts/{koronaAccountId}/externalForms/{externalFormId} |  |
| [**get_external_forms**](ExternalFormApi.md#get_external_forms) | **GET** /accounts/{koronaAccountId}/externalForms |  |
| [**update_external_form**](ExternalFormApi.md#update_external_form) | **PATCH** /accounts/{koronaAccountId}/externalForms/{externalFormId} |  |
| [**update_external_forms**](ExternalFormApi.md#update_external_forms) | **PATCH** /accounts/{koronaAccountId}/externalForms |  |


## add_external_forms

> <Array<AddOrUpdateResult>> add_external_forms(korona_account_id, external_form, opts)



adds a batch of new external forms

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
external_form = [KoronaCloudClient::ExternalForm.new] # Array<ExternalForm> | array of new external forms
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_external_forms(korona_account_id, external_form, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->add_external_forms: #{e}"
end
```

#### Using the add_external_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_external_forms_with_http_info(korona_account_id, external_form, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_external_forms_with_http_info(korona_account_id, external_form, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->add_external_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form** | [**Array&lt;ExternalForm&gt;**](ExternalForm.md) | array of new external forms |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_form

> delete_external_form(korona_account_id, external_form_id)



deletes a single external form

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
external_form_id = 'external_form_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_external_form(korona_account_id, external_form_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->delete_external_form: #{e}"
end
```

#### Using the delete_external_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_external_form_with_http_info(korona_account_id, external_form_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_external_form_with_http_info(korona_account_id, external_form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->delete_external_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_external_forms

> <Array<AddOrUpdateResult>> delete_external_forms(korona_account_id, opts)



deletes a batch of external forms

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  external_form: [KoronaCloudClient::ExternalForm.new] # Array<ExternalForm> | array of existing external forms (id or number required)
}

begin
  
  result = api_instance.delete_external_forms(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->delete_external_forms: #{e}"
end
```

#### Using the delete_external_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_external_forms_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_external_forms_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->delete_external_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form** | [**Array&lt;ExternalForm&gt;**](ExternalForm.md) | array of existing external forms (id or number required) | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_form

> <ExternalForm> get_external_form(korona_account_id, external_form_id)



returns a single external form

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
external_form_id = 'external_form_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_external_form(korona_account_id, external_form_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->get_external_form: #{e}"
end
```

#### Using the get_external_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalForm>, Integer, Hash)> get_external_form_with_http_info(korona_account_id, external_form_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_external_form_with_http_info(korona_account_id, external_form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalForm>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->get_external_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ExternalForm**](ExternalForm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_forms

> <ResultListExternalForm> get_external_forms(korona_account_id, opts)



lists all external forms

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  
  result = api_instance.get_external_forms(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->get_external_forms: #{e}"
end
```

#### Using the get_external_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListExternalForm>, Integer, Hash)> get_external_forms_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_external_forms_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListExternalForm>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->get_external_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListExternalForm**](ResultListExternalForm.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_form

> update_external_form(korona_account_id, external_form_id, external_form)



updates the single external form

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
external_form_id = 'external_form_id_example' # String | id of the related object (important: id should match the uuid-format)
external_form = KoronaCloudClient::ExternalForm.new # ExternalForm | the properties to update of the external form

begin
  
  api_instance.update_external_form(korona_account_id, external_form_id, external_form)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->update_external_form: #{e}"
end
```

#### Using the update_external_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_external_form_with_http_info(korona_account_id, external_form_id, external_form)

```ruby
begin
  
  data, status_code, headers = api_instance.update_external_form_with_http_info(korona_account_id, external_form_id, external_form)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->update_external_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **external_form** | [**ExternalForm**](ExternalForm.md) | the properties to update of the external form |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_external_forms

> <Array<AddOrUpdateResult>> update_external_forms(korona_account_id, external_form)



updates a batch of external forms

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

api_instance = KoronaCloudClient::ExternalFormApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA Studio account
external_form = [KoronaCloudClient::ExternalForm.new] # Array<ExternalForm> | array of existing external forms (id or number required)

begin
  
  result = api_instance.update_external_forms(korona_account_id, external_form)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->update_external_forms: #{e}"
end
```

#### Using the update_external_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_external_forms_with_http_info(korona_account_id, external_form)

```ruby
begin
  
  data, status_code, headers = api_instance.update_external_forms_with_http_info(korona_account_id, external_form)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ExternalFormApi->update_external_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA Studio account |  |
| **external_form** | [**Array&lt;ExternalForm&gt;**](ExternalForm.md) | array of existing external forms (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

